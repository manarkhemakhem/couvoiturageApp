import 'package:flutter/material.dart';
import 'ForgotPasswordScreen.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/background.png', height: 200),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 7, 11, 255)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 7, 11, 255)),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 7, 11, 255)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 7, 11, 255)),
                ),
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/forgot-password');
                },
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(color: Color.fromARGB(255, 7, 11, 255)),
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 7, 11, 255),
              ),
              onPressed: () {
                // Logique de validation des identifiants
                bool isAuthenticated = true; // Simule l'authentification réussie
                if (isAuthenticated) {
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Invalid username or password')),
                  );
                }
              },
              child: Text('Log In', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 8),
            TextButton(
              style: TextButton.styleFrom(
                side: BorderSide(color: Color.fromARGB(255, 7, 11, 255)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Sign Up', style: TextStyle(color: Color.fromARGB(255, 7, 11, 255))),
            ),
          ],
        ),
      ),
    );
  }
}
