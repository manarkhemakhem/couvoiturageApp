import 'package:flutter/material.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Background image or logo
              Image.asset('assets/icons/6368592.jpg', height: 200), // Replace with your image

              // Username field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person, color:  Color.fromARGB(255, 7, 11, 255)), // Added icon
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Email field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email, color:  Color.fromARGB(255, 7, 11, 255)), // Added icon
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Phone field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone',
                  prefixIcon: Icon(Icons.phone, color:  Color.fromARGB(255, 7, 11, 255)), // Added icon
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Password field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock, color:  Color.fromARGB(255, 7, 11, 255)), // Added icon
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Confirm Password field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  prefixIcon: Icon(Icons.lock, color:  Color.fromARGB(255, 7, 11, 255)), // Added icon
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Submit Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Color.fromARGB(255, 7, 11, 255), // Blue theme
                ),
                onPressed: () {},
                child: Text('Submit', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 16),

              
                       
            ],
          ),
        ),
      ),
    );
  }
}
