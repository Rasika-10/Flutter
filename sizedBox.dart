import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SizedBoxAdvancedDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class SizedBoxAdvancedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox Variants Demo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          // fromSize
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '1. SizedBox.fromSize (150x60)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox.fromSize(
            size: Size(150, 60),
            child: Container(
              color: Colors.orange,
              child: Center(child: Text('fromSize')),
            ),
          ),

          // Spacer
          SizedBox(height: 30),

          // expand
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '2. SizedBox.expand (fills all available space)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 100,
            color: Colors.grey[300],
            child: SizedBox.expand(
              child: Container(
                color: Colors.teal,
                child: Center(child: Text('expand', style: TextStyle(color: Colors.white))),
              ),
            ),
          ),

          // Spacer
          SizedBox(height: 30),

          // shrink
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '3. SizedBox.shrink (takes up zero space)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: Colors.red),
              SizedBox.shrink(), // occupies no space
              Icon(Icons.circle, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
