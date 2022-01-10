import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/shayanrecipe_theme.dart';

import 'home.dart';
import 'models/models.dart';

void main() {
  runApp(const Shayanrecipe());
}

class Shayanrecipe extends StatelessWidget {
  const Shayanrecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ShayanRecipeTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Shayan\'s Recipes',
      // 1
      home: MultiProvider(
        providers: [
          // 2
          ChangeNotifierProvider(
            create: (context) => TabManager(),
          ),
          ChangeNotifierProvider(
            create: (context) => GroceryManager(),
          ),
        ],
        child: const Home(),
      ),
    );
  }
}