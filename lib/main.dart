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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red[300],
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> myrecipes = [
    {
      'name': 'Banana Bread    <-------   Click for details',
      'ingredients':
          'Ingredients:\n3 eggs\n2 overripe bananas\n1 tbsp baking powder\n1/3 cup flour.\n\n1. Combine bananas, eggs, and flour.\n2. Bake at 350 for 40 minutes.\n3. Let rest before cutting'
    },
    {
      'name': 'Chocolate Muffins    <-------   Click for details',
      'ingredients':
          'Ingredients:\n2 eggs\n1/2 cup flour\n2 tbsp cacao powder.\n\n1. Preheat oven to 450\n2. Combine dry ingredients.\n3. Bake for 25 minutes\n4. Let chill and enjoy!'
    },
    {
      'name': 'Sugar Cookies    <-------   Click for details',
      'ingredients':
          'Ingredients:\n1 egg\n2 cups granulated sugar\n1 tbsp vanilla extract\n1 cup flour.\n\n1. Combine dry ingredients.\n2. Whisk in egg and vanilla.\n3. Bake at 400 for 15 minutes.\n4. Let rest then enjoy!'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skyler's Favorite Recipes"),
      ),
      backgroundColor: Colors.pink[50],
      body: ListView.builder(
        itemCount: myrecipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(myrecipes[index]['name']!,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
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
