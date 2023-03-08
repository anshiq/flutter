import 'package:firebase_core/firebase_core.dart';
import 'package:flutproject/resources/auth_methods.dart';
import 'package:flutproject/screens/home_screen.dart';
import 'package:flutproject/screens/login_screen.dart';
import 'package:flutproject/utils/colors.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zoom Clone",
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      routes: {
        '/login': (context) => loginScreen(),
        '/home': (context) => homeScreen(),
      },
      home: StreamBuilder(
        stream: AuthMethods().authChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            return homeScreen();
          }
          return loginScreen();
        },
      ),
    );
  }
}
