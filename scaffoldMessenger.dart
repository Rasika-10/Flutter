import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SnackBarDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class SnackBarDemo extends StatelessWidget {
  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Hello from ScaffoldMessenger!'),
      backgroundColor: Colors.deepPurple,
      duration: Duration(seconds: 2),
      action: SnackBarAction(
        label: 'UNDO',
        textColor: Colors.yellow,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Undo clicked')),
          );
        },
      ),
    );

    // Show the snackbar using ScaffoldMessenger
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScaffoldMessenger SnackBar'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show SnackBar'),
          onPressed: () => _showSnackBar(context),
        ),
      ),
    );
  }
}
