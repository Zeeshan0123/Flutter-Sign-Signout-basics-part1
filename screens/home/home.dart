import 'package:flutter/material.dart';
import '../services/auth.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final AuthService _auth = AuthService();                          // from auth.dart

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
              title: new Text('Home Page',style: new TextStyle(color: Colors.white),),
              centerTitle: false,
              backgroundColor: Colors.purple[900],
              actions: [
                ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.teal[300]),
                      ),
                    onPressed: ()async{
                       await _auth.Sign_out();
                    },
                    
                    icon: Icon( 
                      Icons.person_outlined,
                      size: 24.0,
                    ),
                    label: Text('logout'), 
                  ),
              ],
              ),

      body: new ListView(
        children: [
          ListTile(
            title: new Text('Hello buddy this is home page'),
          ),
        ],
      ),

     bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
        color: Color.fromARGB(255, 60, 98, 134),
      ), 
    );
  }
}