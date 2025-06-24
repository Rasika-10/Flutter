import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackPositionedDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class StackPositionedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack & Positioned Demo'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Base container
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.indigo[100],
                borderRadius: BorderRadius.circular(16),
              ),
            ),

            // Positioned top-left
            Positioned(
              top: 16,
              left: 16,
              child: Icon(Icons.star, size: 32, color: Colors.orange),
            ),

            // Positioned bottom-right
            Positioned(
              bottom: 16,
              right: 16,
              child: Text(
                'Flutter Stack',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
              ),
            ),

            // Positioned center overlay
            Positioned(
              top: 80,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Click Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
