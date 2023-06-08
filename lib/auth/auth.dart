import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_application_1/screen/availblescreen.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get current => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> emailSignUp(
      BuildContext context, String txt1, String txt2) async {
    try {
      firebase_auth.UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: txt1, password: txt2);
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (builder) => AvailableScreen()),
        (route) => false,
      );
    } on FirebaseAuthException catch (e) {
      final snackbar = SnackBar(content: Text(e.message.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  Future<void> emailSignIn(
      BuildContext context, String txt1, String txt2) async {
    try {
      firebase_auth.UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: txt1, password: txt2);
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => AvailableScreen()),
          (route) => false);
    } on FirebaseAuthException catch (e) {
      final snackbar = SnackBar(content: Text(e.message.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
