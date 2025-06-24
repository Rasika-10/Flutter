import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PaddingEdgeInsetsDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class PaddingEdgeInsetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding & EdgeInsets Demo'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // EdgeInsets.all()
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                color: Colors.teal[100],
                child: Text('Padding: EdgeInsets.all(20)'),
              ),
            ),

            // EdgeInsets.symmetric()
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Container(
                color: Colors.teal[200],
                child: Text('Padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10)'),
              ),
            ),

            // EdgeInsets.only()
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Container(
                color: Colors.teal[300],
                child: Text('Padding: EdgeInsets.only(left: 30, top: 10)'),
              ),
            ),

            // EdgeInsets.fromLTRB()
            Padding(
              padding: EdgeInsets.fromLTRB(15, 25, 5, 10),
              child: Container(
                color: Colors.teal[400],
                child: Text('Padding: EdgeInsets.fromLTRB(15, 25, 5, 10)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
