import 'package:flutter/material.dart';
import 'package:movie_recommandation/features/movie_flow/movie_flow.dart';
import 'package:movie_recommandation/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Rec',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: AppThemes.darkTheme(context),
      home: const MovieFlow(),
    );
  }
}
