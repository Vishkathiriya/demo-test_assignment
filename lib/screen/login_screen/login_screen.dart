import 'package:first_cry/core/dimens/sizedbox.dart';
import 'package:first_cry/core/styles/app_colors.dart';
import 'package:first_cry/core/styles/app_text.dart';
import 'package:first_cry/core/styles/app_text_styles.dart';
import 'package:first_cry/helper/services/auth.dart';
import 'package:first_cry/main.dart';
import 'package:first_cry/resource/dimens/dimens.dart';
import 'package:first_cry/resource/generated/assets.gen.dart';
import 'package:first_cry/screen/home_screen/home_screen.dart';
import 'package:first_cry/screen/sign_up_screen/sign_up_screen.dart';
import 'package:first_cry/src/generated/l10n.dart';
import 'package:first_cry/widgets/custom_app_button/custom_app_button_widget.dart';
import 'package:first_cry/widgets/custom_app_loder/custom_app_loder.dart';
import 'package:first_cry/widgets/custom_textfield/custom_textfield_widget.dart';
import 'package:first_cry/widgets/custom_toast_message/custom_toast_message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required void Function() toggleView});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService _auth = AuthService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: WillPopScope(
        onWillPop: () async => false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.d16.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildLoginvector(),
                buildsizedbox(Dimens.d80),
                _buildemail(),
                buildsizedbox(Dimens.d16),
                _buildpassword(),
                buildsizedbox(Dimens.d30),
                _buildsignInText(),
                buildsizedbox(Dimens.d130),
                _buildloginbutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildLoginvector() {
    return Padding(
      padding: EdgeInsets.only(top: Dimens.d100.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Assets.images.png.firstcry.image(height: 110.h)],
      ),
    );
  }

  _buildemail() {
    return Column(
      children: [
        _buildFieldTitle(S.current.email),
        buildsizedbox(Dimens.d8),
        AppTextFormField(
          label: S.current.email,
          controller: emailIdController,
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
          label: S.current.password,
          obscureText: !visible,
          controller: passwordController,
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

  _buildloginbutton() {
    return AppButton(
        buttonText: S.current.login,
        onpressed: () async {
          if (_formKey.currentState!.validate()) {
            Loader().showLoader(context);
            dynamic result = await _auth.signInEmailPassword(LoginUser(
                email: emailIdController.text,
                password: passwordController.text));
            if (result.uid == null) {
              Loader().hideLoader(context);
              if (result.code == S.current.notfound) {
                toastMessageWidget(context, S.current.nouserfound, false);
              } else if (result.code == S.current.wrongpassword) {
                toastMessageWidget(context, S.current.wrongpasswordmsg, false);
              }
              return;
            } else {
              Loader().hideLoader(context);
              toastMessageWidget(context, S.current.loginsuccess, true);
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ));
            }
          }
        });
  }

  Row _buildsignInText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(
          text: S.current.Donothaveanaccount,
          textStyle: AppTextStyles.size16WithMedium,
        ),
        buildsizedbox(Dimens.d5.h),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const SignUpScreen();
              },
            ));
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SizedBox(
            height: Dimens.d20.h,
            child: AppText(
                text: S.current.signup,
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
