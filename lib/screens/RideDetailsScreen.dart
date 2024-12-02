import 'package:flutter/material.dart';

class RideDetailsScreen extends StatelessWidget {
  const RideDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ride Details'),
        backgroundColor: Color.fromARGB(255, 7, 11, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('From: City A', style: TextStyle(fontSize: 18)),
            Text('To: City B', style: TextStyle(fontSize: 18)),
            Text('Date: 2024-12-02', style: TextStyle(fontSize: 18)),
            Text('Seats Available: 3', style: TextStyle(fontSize: 18)),
            Text('Price: \$10', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Booking logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 7, 11, 255),
              ),
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
