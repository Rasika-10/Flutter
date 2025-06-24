import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    home: ListViewDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class ListViewDemo extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder & Separated'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'ListView.builder',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.star, color: Colors.blueAccent),
                  title: Text(items[index]),
                  subtitle: Text('Subtitle ${index + 1}'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Tapped on ${items[index]}')),
                    );
                  },
                );
              },
            ),
          ),
          Divider(thickness: 2),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'ListView.separated',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.label, color: Colors.green),
                  title: Text(items[index]),
                  trailing: Icon(Icons.check_circle, color: Colors.green),
                );
              },
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey[400],
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
