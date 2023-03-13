import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // SignInWithGoogle
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn(scopes: <String>["email"]).signIn();

      // obtain the auth details from the request
      final googleAuth = await googleUser!.authentication;

      // create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // trigger the authentication flow

      // once signed in return user credentials
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      return null;
    }
  }

  // SignOut
  void signOut() => FirebaseAuth.instance.signOut();
}
