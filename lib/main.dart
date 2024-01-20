import 'package:flutter/material.dart';
import 'package:new_apps1_2110020005/component/costumListTile.dart';
import 'package:new_apps1_2110020005/model/article_model.dart';
import 'package:new_apps1_2110020005/pages/home_page.dart';
import 'package:new_apps1_2110020005/pages/otomotive_page.dart';
import 'package:new_apps1_2110020005/pages/profile_page.dart';
import 'package:new_apps1_2110020005/pages/splash_screen.dart';
import 'package:new_apps1_2110020005/pages/sport_page.dart';
import 'package:new_apps1_2110020005/services/api_service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.waiting) {
          return MaterialApp(
            routes: {
              '/home': (context) => HomePage(),
              '/otomotive': (context) => OtomotivePage(),
              '/sport': (context) => SportPage(),
              '/profile': (context) => ProfilePage(),
            },
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        } else {
          return SplashScreen();
        }
      },
    );
  }
}
