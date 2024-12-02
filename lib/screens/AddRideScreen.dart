import 'package:flutter/material.dart';

class AddRideScreen extends StatefulWidget {
  const AddRideScreen({Key? key}) : super(key: key);

  @override
  _AddRideScreenState createState() => _AddRideScreenState();
}

class _AddRideScreenState extends State<AddRideScreen> {
  final TextEditingController _startController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  void _submitRide() {
    // Logic for saving the ride data
    print('Ride Added: ${_startController.text} -> ${_destinationController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a Ride'),
        backgroundColor: Color.fromARGB(255, 7, 11, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _startController,
              decoration: InputDecoration(
                labelText: 'Start Location',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _destinationController,
              decoration: InputDecoration(
                labelText: 'Destination',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _dateController,
              decoration: InputDecoration(
                labelText: 'Date',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(
                labelText: 'Price',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submitRide,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 7, 11, 255),
              ),
              child: Text('Add Ride'),
            ),
          ],
        ),
      ),
    );
  }
}
