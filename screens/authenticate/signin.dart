import 'package:backend_new/screens/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();                 //creating object of AuthService class and using auth.dart 
                                                           //calling instance of class AuthService use this inside the button
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: new AppBar(title: new Text('SignIn'),centerTitle: true,elevation: 0.0,backgroundColor: Colors.green,),
      
      body: new ListView(

        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 120.1),
            child: ElevatedButton(
              onPressed: () async
               { 
                dynamic result = await _auth.signInAnon();             // calling function of AuthService class
                if(result == null){
                  print('Error SignIn');
                }
                else{
                  print('SignIn');
                  print(result.uid);                 //    Note this will return the user id from Firebase amaizing
                  // print(result);
                }
               },

              child: new Text('Sign In(Anoumous)'),
              ),
          ),
        ],


      ),

       bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
        color: Color.fromARGB(255, 245, 117, 6),
       )


    );
  }
}