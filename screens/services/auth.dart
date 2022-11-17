
import 'package:backend_new/models/user.dart';

import '../authenticate/authenticate.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  
  //  final FirebaseAuth _auth = FirebaseAuth.instance;

  final FirebaseAuth _auth = FirebaseAuth.instance;



  // Create user object based on firebase user
  Userclass? _userFromFirebaseUser(User? user){                         // this function will only returns the user id
    return user != null ? Userclass(uid: user.uid) : null;
  }


  //auth change user Stream
  Stream<Userclass?> get user {                                     //To lisen the authentication change use stream
    return _auth.authStateChanges()
    .map((User? user) => _userFromFirebaseUser(user));
  }




   // sign in anonymously
   Future signInAnon() async{                                            
    try{
      UserCredential result = await _auth.signInAnonymously();  
      User? user = result.user;
      return _userFromFirebaseUser(user);
      //return user;                                                     // this line will return all data
    }
    catch(e){
      print(e.toString());
      return null;
    }
   }


   // Signout
   Future Sign_out() async{
    try{
      return await _auth.signOut();                                  // by default function of  
    }
    catch(e){
       print(e.toString());
       return null;
    };
   }

}