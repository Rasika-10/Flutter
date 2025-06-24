import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListTileExample(),
    debugShowCheckedModeBanner: false,
  ));
}

class ListTileExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Rasika B.'),
            subtitle: Text('Flutter Developer'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped on Rasika B.')),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.email, color: Colors.deepPurple),
            title: Text('rasika@example.com'),
            subtitle: Text('Personal Email'),
            trailing: IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Sending email...')),
                );
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.red),
            title: Text('Bangalore, India'),
            subtitle: Text('Current Location'),
            onTap: () {
              print('Location tapped');
            },
          ),
        ],
      ),
    );
  }
}
