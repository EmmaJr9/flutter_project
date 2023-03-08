import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stock_wallet/pages/home_page.dart';
import 'package:flutter_stock_wallet/pages/sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // SignInWithGoogle
  signInWithGoogle() async {
    // trigger the authentication flow
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();

    // obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // once signed in return user credentials
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // signInWithEmailAndPassword
  //signInWithEmailAndPassword() async {}

  // SignOut
  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
