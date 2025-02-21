import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, String> recipe;

  DetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(title: Text(recipe['name']!)),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Text(recipe['ingredients']!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey)),
        ),
      ),
    );
  }
}
