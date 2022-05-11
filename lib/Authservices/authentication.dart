import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<bool>login(String email , String password)async{
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      return false;
    }


  }
  Future<bool>register(String email, String password)async{
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      return false;
    }
  }

  // Future<bool> googleSignIn()async{
  //   GoogleSignIn googleSignIn = GoogleSignIn();
  //   GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  //   GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;
  //   try {
  //     _firebaseAuth.signInWithCredential(GoogleAuthProvider.credential(
  //       accessToken: googleSignInAuthentication.accessToken,
  //       idToken:  googleSignInAuthentication.idToken
  //     ));
  //   return true;
  //   } catch (e) {
  //   return false;
  //   }
  // }


}