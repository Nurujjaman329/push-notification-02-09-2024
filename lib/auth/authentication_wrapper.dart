import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:push_notification/services/notifications_service.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),

        builder: (context,AsyncSnapshot<User?>snapshot){

      if(snapshot.connectionState == ConnectionState.waiting){
        return Center(child: CircularProgressIndicator(),);
      }
      else {if(snapshot.hasData){
        LocalNotificationService().uploadFcmToken();
        return HomePage(user: snapshot.data!);
      }
       else{return LoginPage();}
      }
        });
  }
}
