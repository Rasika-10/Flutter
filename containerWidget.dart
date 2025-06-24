import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(

    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text('Container Widget')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              'Container 1',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          SizedBox(height: 20), // Spacing between containers
          Container(
            width: 200,
            height: 100,
            color: Colors.green,
            alignment: Alignment.center,
            child: Text(
              'Container 2',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    ),
  ));
}
