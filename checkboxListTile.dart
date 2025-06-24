import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CheckboxListTileDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class CheckboxListTileDemo extends StatefulWidget {
  @override
  _CheckboxListTileDemoState createState() => _CheckboxListTileDemoState();
}

class _CheckboxListTileDemoState extends State<CheckboxListTileDemo> {
  bool _notifications = false;
  bool _locationAccess = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxListTile'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Enable Notifications"),
              subtitle: Text("Receive push alerts and updates"),
              value: _notifications,
              onChanged: (bool? value) {
                setState(() {
                  _notifications = value!;
                });
              },
              activeColor: Colors.deepOrange,
              secondary: Icon(Icons.notifications_active),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            Divider(),

            CheckboxListTile(
              title: Text("Allow Location Access"),
              subtitle: Text("Used for better local recommendations"),
              value: _locationAccess,
              onChanged: (bool? value) {
                setState(() {
                  _locationAccess = value!;
                });
              },
              activeColor: Colors.deepOrange,
              secondary: Icon(Icons.location_on),
              controlAffinity: ListTileControlAffinity.trailing,
            ),
          ],
        ),
      ),
    );
  }
}
