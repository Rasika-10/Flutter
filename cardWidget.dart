import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CardWidgetDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class CardWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget Example'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 6,
              shadowColor: Colors.tealAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.account_circle, size: 40, color: Colors.teal),
                    title: Text('Rasika B.'),
                    subtitle: Text('Flutter Developer'),
                    trailing: Icon(Icons.more_vert),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'This is a stylish Flutter card with rounded corners, elevation, and a nice layout using ListTile and Padding.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('VIEW'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('CONTACT'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
