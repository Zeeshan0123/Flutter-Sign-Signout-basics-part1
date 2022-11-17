import 'package:backend_new/models/user.dart';
import 'package:backend_new/screens/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Userclass?>.value(
      initialData: null,
      value: AuthService().user,                  //this user is Stream user
      child:MaterialApp(
        home: wrapper(),
        )

    );

  }
      
    
    
}