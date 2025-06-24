import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text('Align Widget')),
      body: Container(
        color: Colors.grey[300],
        width: double.infinity,
        height: double.infinity,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 120,
            height: 60,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Aligned!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    ),
  ));
}
