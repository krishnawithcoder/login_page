import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Home_Page.dart';
import 'login_page.dart';

class MainPagge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
