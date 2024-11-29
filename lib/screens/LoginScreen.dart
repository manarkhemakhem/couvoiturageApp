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
            // Background image
            Image.asset('assets/icons/background.png', height: 200),

            // Username TextField with icon
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person, color:  Color.fromARGB(255, 7, 11, 255)),  // Icon color in blue
                border: OutlineInputBorder(
                  borderSide: BorderSide(color:  Color.fromARGB(255, 7, 11, 255)),  // Border color in blue
                ),
              ),
            ),
            SizedBox(height: 16),

            // Password TextField with icon
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock, color:  Color.fromARGB(255, 7, 11, 255)),  // Icon color in blue
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 7, 11, 255)),  // Border color in blue
                ),
              ),
            ),
            SizedBox(height: 16),

            // Forgot Password Link
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                  );
                },
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(color:  Color.fromARGB(255, 7, 11, 255)),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Log In Button - Blue background
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:  Color.fromARGB(255, 7, 11, 255), // Correct way to set background color
            ),
            onPressed: () {},
            child: Text('Log In', style: TextStyle(color: Colors.white)),
          ),
                      SizedBox(height: 8),

            // Sign Up Button - Blue border
            TextButton(
              style: TextButton.styleFrom(
                side: BorderSide(color:  Color.fromARGB(255, 7, 11, 255)), // Blue border
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: Text('Sign Up', style: TextStyle(color:  Color.fromARGB(255, 7, 11, 255))),
            ),
          ],
        ),
      ),
    );
  }
}
