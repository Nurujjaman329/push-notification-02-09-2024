import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final User user;
  const HomePage({super.key,required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('HomePage'),),
   body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('Welcome, ${user.email}'),
         SizedBox(height: 15.0,),
         ElevatedButton(
             style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
             onPressed: ()async{
           await FirebaseAuth.instance.signOut();
         }, child: Text('Sign Out',style: TextStyle(color: Colors.white),))
       ],
     ),
   ),
    );
  }
}
