import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_cry/main.dart';
import 'package:first_cry/screen/login_screen/login_screen.dart';
import 'package:first_cry/src/generated/l10n.dart';
import 'package:first_cry/widgets/custom_toast_message/custom_toast_message_widget.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

//create user object base on Firebase User
  FirebaseUser? _firebaseUser(User? user) {
    return user != null ? FirebaseUser(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<FirebaseUser?> get user {
    return _auth.authStateChanges().map(_firebaseUser);
  }

//sign in ano
  Future signInAnonymous() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      User? user = userCredential.user;
      return _firebaseUser(user);
    } catch (e) {
      return FirebaseUser(code: e.toString(), uid: null);
    }
  }

//sign in email and address
  Future signInEmailPassword(LoginUser _login) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _login.email.toString(),
              password: _login.password.toString());
      User? user = userCredential.user;
      return _firebaseUser(user);
    } on FirebaseAuthException catch (e) {
      return FirebaseUser(code: e.code, uid: null);
    }
  }

//register with email and password
  Future registerEmailPassword(LoginUser _login) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _login.email.toString(),
              password: _login.password.toString());
      User? user = userCredential.user;
      return _firebaseUser(user);
    } on FirebaseAuthException catch (e) {
      return FirebaseUser(code: e.code, uid: null);
    } catch (e) {
      return FirebaseUser(code: e.toString(), uid: null);
    }
  }

//sign out
  Future signOut(context) async {
    try {
      return await _auth.signOut().then((value) {
        toastMessageWidget(context, S.current.userLogout, true);
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
          builder: (context) {
            return LoginScreen(toggleView: () {});
          },
        ), (route) => false);
      });
    } catch (e) {
      return null;
    }
  }
}
