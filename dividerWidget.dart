import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AdvancedDividerDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class AdvancedDividerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider Widget'),
        backgroundColor: Colors.deepPurple,
        elevation: 6,
      ),
      body: Column(
        children: [
          // Horizontal Divider Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'User Profiles',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.deepPurple, child: Icon(Icons.person, color: Colors.white)),
                  title: Text('Rasika B.'),
                  subtitle: Text('Flutter Developer'),
                  trailing: Icon(Icons.chat, color: Colors.deepPurple),
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.grey.shade400,
                  indent: 16,
                  endIndent: 16,
                ),
                ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.indigo, child: Icon(Icons.person_outline, color: Colors.white)),
                  title: Text('Aadhi'),
                  subtitle: Text('Backend Engineer'),
                  trailing: Icon(Icons.chat, color: Colors.indigo),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          // Vertical Divider Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Panel Layout with Vertical Divider',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.deepPurple.shade100, Colors.deepPurple.shade300],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Left Panel',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                VerticalDivider(
                  thickness: 3,
                  width: 20,
                  color: Colors.grey.shade700,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.teal.shade100, Colors.teal.shade300],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Right Panel',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
