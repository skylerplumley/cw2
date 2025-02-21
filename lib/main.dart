import 'package:flutter/material.dart';
import 'details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Recipe App',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> myrecipes = [
    {'name': 'Banana Bread', 'ingredients': 'Bananas, eggs, flour'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Available Recipes: click to view details')),
      body: ListView.builder(
        itemCount: myrecipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(myrecipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(recipe: myrecipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
