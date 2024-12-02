import 'package:firstapp/screens/AddRideScreen.dart';
import 'package:firstapp/screens/HistoryScreen.dart';
import 'package:flutter/material.dart';

import 'screens/ForgotPasswordScreen.dart';
import 'screens/HomeScreen.dart';
import 'screens/LoginScreen.dart';
import 'screens/SignupScreen.dart';
import 'screens/WelcomeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carpooling App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/home': (context) => const HomeScreen(),
        '/addRide': (context) => const AddRideScreen(),
        '/history': (context) => const HistoryScreen(),

      },
    );
  }
}
