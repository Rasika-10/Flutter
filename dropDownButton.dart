import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DropdownDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class DropdownDemo extends StatefulWidget {
  @override
  _DropdownDemoState createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  final List<String> _cities = ['Chennai', 'Mumbai', 'Delhi', 'Bangalore'];
  String _selectedCity = 'Chennai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButton Demo'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Select a City:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: _selectedCity,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 28,
              elevation: 4,
              style: TextStyle(color: Colors.teal, fontSize: 16),
              underline: Container(
                height: 2,
                color: Colors.tealAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCity = newValue!;
                });
              },
              items: _cities.map<DropdownMenuItem<String>>((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'You selected: $_selectedCity',
              style: TextStyle(fontSize: 16, color: Colors.deepPurple),
            ),
          ],
        ),
      ),
    );
  }
}
