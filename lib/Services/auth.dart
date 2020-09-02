import 'package:firebase_auth/firebase_auth.dart';

class AuthService
{

  final FirebaseAuth _auth= FirebaseAuth.instance;


  //sign in anonymously
  Future signInAnonymous() async
  {
    try
        {
           AuthResult result= await _auth.signInAnonymously();
           FirebaseUser user= result.user;
           return user;
        }
        catch (error)
    {
      print((error.toString()));
      return null;

    }
  }

  //sign in with email and password

  //register with email and password

  //sign out
}