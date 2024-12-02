import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Color.fromARGB(255, 7, 11, 255),
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with dynamic history data
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('City A -> City B'),
              subtitle: Text('Date: 2024-12-01 | Status: Booked'),
            ),
          );
        },
      ),
    );
  }
}
