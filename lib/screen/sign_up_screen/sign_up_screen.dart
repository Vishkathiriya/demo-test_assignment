import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_cry/core/dimens/sizedbox.dart';
import 'package:first_cry/core/styles/app_text.dart';
import 'package:first_cry/core/styles/app_text_styles.dart';
import 'package:first_cry/resource/dimens/dimens.dart';
import 'package:first_cry/resource/generated/assets.gen.dart';
import 'package:first_cry/resource/styles/app_colors.dart';
import 'package:first_cry/screen/home_screen/home_screen.dart';
import 'package:first_cry/src/generated/l10n.dart';
import 'package:first_cry/widgets/custom_app_button/custom_app_button_widget.dart';
import 'package:first_cry/widgets/custom_app_loder/custom_app_loder.dart';
import 'package:first_cry/widgets/custom_textfield/custom_textfield_widget.dart';
import 'package:first_cry/widgets/custom_toast_message/custom_toast_message_widget.dart';
import 'package:first_cry/widgets/remove_scroll_shadow/remove_scroll_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, this.toggleView});
  final Function? toggleView;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool visible = false;
  bool isProcessing = false;
  final TextEditingController nameconroller = TextEditingController();
  final TextEditingController emailconroller = TextEditingController();
  final TextEditingController passconroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.d16.w),
        child: Column(
          children: [
            _buildsignupvector(),
            buildsizedbox(Dimens.d60),
            Expanded(
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        _buildfullname(),
                        buildsizedbox(Dimens.d16),
                        _buildEmail(),
                        buildsizedbox(Dimens.d16),
                        _buildpassword(),
                        buildsizedbox(Dimens.d30),
                        _buildsignInText(),
                        buildsizedbox(Dimens.d50),
                        _buildsignupbutton(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildsignupvector() {
    return Padding(
      padding: EdgeInsets.only(top: Dimens.d100.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Assets.images.png.firstcry.image(height: 110.h)],
      ),
    );
  }

  _buildfullname() {
    return Column(
      children: [
        _buildFieldTitle(S.current.fullname),
        buildsizedbox(Dimens.d8),
        AppTextFormField(
          label: S.current.fullname,
          controller: nameconroller,
          validator: (value) {
            if (value != null) {
              if (value.isNotEmpty) {
                return null;
              }
              return S.current.EnterFullName;
            }
            return null;
          },
        ),
      ],
    );
  }

  _buildEmail() {
    return Column(
      children: [
        _buildFieldTitle(S.current.email),
        buildsizedbox(Dimens.d8),
        AppTextFormField(
          label: S.current.email,
          controller: emailconroller,
          validator: (value) {
            if (value != null) {
              if (value.contains('@') && value.endsWith('.com')) {
                return null;
              }
              return S.current.validEmail;
            }
            return null;
          },
        ),
      ],
    );
  }

  _buildpassword() {
    return Column(
      children: [
        _buildFieldTitle(S.current.password),
        buildsizedbox(Dimens.d8),
        AppTextFormField(
          controller: passconroller,
          obscureText: !visible,
          label: S.current.password,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return S.current.filedrequired;
            }
            if (value.trim().length < 6) {
              return S.current.validpassword;
            }
            // Return null if the entered password is valid
            return null;
          },
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                visible = !visible;
              });
            },
            child: !visible
                ? const Icon(
                    Icons.visibility,
                    color: AppStaticColors.eyeGradienttop,
                  )
                : const Icon(
                    Icons.visibility_off,
                    color: AppStaticColors.eyeGradienttop,
                  ),
          ),
        ),
      ],
    );
  }

  _buildsignupbutton() {
    return AppButton(
        buttonText: S.current.signup,
        onpressed: () async {
          if (_formKey.currentState!.validate()) {
            Loader().showLoader(context);
            User? user = await registerUsingEmailPassword(
              name: nameconroller.text,
              email: emailconroller.text,
              password: passconroller.text,
            );
            if (user != null) {
              Loader().hideLoader(context);
              toastMessageWidget(context, S.current.registersuccess, true);
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
                ModalRoute.withName('/'),
              );
            } else {
              Loader().hideLoader(context);
              toastMessageWidget(context, S.current.somethingwrong, false);
            }
          }
        });
  }

  static Future<User?> registerUsingEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      user = userCredential.user;
      await user!.updateProfile(displayName: name);
      await user.reload();
      user = auth.currentUser;
    } on FirebaseAuthException catch (e) {
      if (e.code == S.current.Weakpassword) {
      } else if (e.code == S.current.alredyuseemail) {}
    } catch (e) {
      print(e);
    }

    return user;
  }

  Row _buildsignInText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(
            text: S.current.alreadyhaveanaccount,
            textStyle: AppTextStyles.size16WithMedium),
        buildsizedbox(Dimens.d5.h),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SizedBox(
            height: Dimens.d20.h,
            child: AppText(
                text: S.current.signin,
                textStyle: AppTextStyles.size16WithBold),
          ),
        ),
      ],
    );
  }

  Row _buildFieldTitle(String title) {
    return Row(
      children: [
        AppText(text: title, textStyle: AppTextStyles.size16WithMedium),
      ],
    );
  }
}
