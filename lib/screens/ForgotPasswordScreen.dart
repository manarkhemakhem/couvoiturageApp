import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lock Icon
            Icon(
              Icons.lock_outline, // Lock icon
              size: 100,
              color: Color.fromARGB(255, 7, 11, 255), // Blue theme color
            ),
            SizedBox(height: 16),

            // Email field
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your email',
                prefixIcon: Icon(Icons.email, color: Color.fromARGB(255, 7, 11, 255)), // Blue email icon
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 7, 11, 255)), // Blue border on focus
                ),
              ),
            ),
            SizedBox(height: 16),

            // Submit Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 7, 11, 255), // Blue background
              ),
              onPressed: () {},
              child: Text('Submit', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 8),

            // Go back to Log In Button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Go back to Log In',
                style: TextStyle(color: Color.fromARGB(255, 7, 11, 255)), // Blue text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
