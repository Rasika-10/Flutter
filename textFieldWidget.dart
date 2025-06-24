import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TextFieldExample(),
    debugShowCheckedModeBanner: false,
  ));
}

class TextFieldExample extends StatefulWidget {
  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  final TextEditingController _controller = TextEditingController();
  String _displayText = '';

  @override
  void dispose() {
    _controller.dispose(); // Dispose controller when widget is destroyed
    super.dispose();
  }

  void _submitText() {
    setState(() {
      _displayText = _controller.text;
    });
    FocusScope.of(context).unfocus(); // Close the keyboard
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Demo'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.text,
              maxLength: 30,
              decoration: InputDecoration(
                labelText: 'Enter your name',
                hintText: 'e.g. Rasika B',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal, width: 2),
                ),
              ),
              onSubmitted: (_) => _submitText(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitText,
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              _displayText.isEmpty ? 'Your text will appear here' : 'You typed: $_displayText',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
