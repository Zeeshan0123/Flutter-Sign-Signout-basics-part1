import 'package:backend_new/models/user.dart';
import 'package:backend_new/screens/authenticate/authenticate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';
import 'home/home.dart';

class wrapper extends StatelessWidget {
  const wrapper({super.key});

  @override                                  // either home page or authenicate page
  Widget build(BuildContext context) {

    final user = Provider.of<Userclass?>(context); // accesing user data from the provider
    print(user);
    if(user == null){
       return authenicate();
    }
    else{
      return Home();
    }

    
  }
}