import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, String> recipe;

  DetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe['name']!)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(recipe['ingredients']!, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
