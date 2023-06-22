import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:first_cry/helper/services/auth.dart';
import 'package:first_cry/src/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'screen/splash_screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final Directory appDocDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocDir.path);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) async {
    await Hive.openBox('flutter bloc structure').then(
      (value) => runApp(
        MyApp(prefs: value),
      ),
    );
  });
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
    required this.prefs,
  }) : super(key: key);
  Box prefs;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => StreamProvider<FirebaseUser?>.value(
              value: AuthService().user,
              initialData: null,
              child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  supportedLocales: S.delegate.supportedLocales,
                  localizationsDelegates: const [
                    S.delegate,
                  ],
                  title: 'Firstcry',
                  theme: ThemeData.light(),
                  home: const SplashScreen()),
            ));
  }
}

class FirebaseUser {
  final String? uid;
  final String? code; //code firebaseauth excemption
  FirebaseUser({this.uid, this.code});
}

class LoginUser {
  final String? email;
  final String? password;

  LoginUser({this.email, this.password});
}
