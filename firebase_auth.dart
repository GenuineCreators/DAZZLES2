// ignore_for_file: unused_field, use_key_in_widget_constructors, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sellers/screens/login_screen.dart';
import 'package:sellers/widgets/bottom_navbar.dart';

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Placeholder for loading state
        } else if (snapshot.hasData) {
          return BottomNavBar();
        } else {
          //8
          return LoginScreen();
        }
      },
    );
  }
}
