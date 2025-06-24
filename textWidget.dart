import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TextWidgetDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class TextWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Simple Text',
            ),
            SizedBox(height: 20),
            Text(
              'Styled Text with multiple properties.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                letterSpacing: 1.5,
                wordSpacing: 2.0,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'This is a very long text that will be truncated if it overflows the line. This demonstrates maxLines and overflow handling.',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, color: Colors.grey[800]),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Centered Text',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
