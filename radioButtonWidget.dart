import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RadioButtonDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class RadioButtonDemo extends StatefulWidget {
  @override
  _RadioButtonDemoState createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo> {
  String _selectedGender = 'female';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Choose Gender:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Male'),
              leading: Radio<String>(
                value: 'male',
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Female'),
              leading: Radio<String>(
                value: 'female',
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                },
              ),
            ),
            SizedBox(height: 30),

            // Using RadioListTile (more compact)
            RadioListTile<String>(
              title: Text('Other'),
              value: 'other',
              groupValue: _selectedGender,
              onChanged: (value) {
                setState(() {
                  _selectedGender = value!;
                });
              },
            ),

            SizedBox(height: 20),
            Text(
              'Selected: $_selectedGender',
              style: TextStyle(fontSize: 18, color: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}
