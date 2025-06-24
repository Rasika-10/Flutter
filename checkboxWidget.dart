import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CheckboxDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _isChecked = false;
  bool _termsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Demo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Basic Checkbox
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  activeColor: Colors.deepPurple,
                ),
                Text(
                  _isChecked ? 'Checked' : 'Unchecked',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

            Divider(),

            // CheckboxListTile
            CheckboxListTile(
              title: Text("Accept Terms & Conditions"),
              subtitle: Text("You must accept before continuing."),
              value: _termsAccepted,
              onChanged: (bool? value) {
                setState(() {
                  _termsAccepted = value!;
                });
              },
              activeColor: Colors.teal,
              secondary: Icon(Icons.rule),
              controlAffinity: ListTileControlAffinity.leading,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: _termsAccepted
                  ? () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Proceeding...")),
                );
              }
                  : null,
              child: Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
