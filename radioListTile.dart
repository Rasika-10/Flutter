import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RadioListTileDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class RadioListTileDemo extends StatefulWidget {
  @override
  _RadioListTileDemoState createState() => _RadioListTileDemoState();
}

class _RadioListTileDemoState extends State<RadioListTileDemo> {
  String _selectedOption = 'daily';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioListTile'),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          RadioListTile<String>(
            title: Text('Daily Notifications'),
            subtitle: Text('Get updates every day'),
            value: 'daily',
            groupValue: _selectedOption,
            activeColor: Colors.indigo,
            secondary: Icon(Icons.notifications_active),
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Text('Weekly Summary'),
            subtitle: Text('Receive weekly updates'),
            value: 'weekly',
            groupValue: _selectedOption,
            activeColor: Colors.indigo,
            secondary: Icon(Icons.calendar_view_week),
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Text('Turn Off Notifications'),
            value: 'off',
            groupValue: _selectedOption,
            activeColor: Colors.indigo,
            secondary: Icon(Icons.notifications_off),
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
          SizedBox(height: 20),
          Text(
            'Selected Option: $_selectedOption',
            style: TextStyle(fontSize: 18, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}
