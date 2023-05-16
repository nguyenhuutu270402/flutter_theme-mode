import 'package:flutter/material.dart';
import 'package:my_app/provider/theme_model.dart';
import 'package:my_app/screen/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dark Mode',
      theme: ThemeData.light(), // Chế độ Light Mode
      darkTheme: ThemeData.dark(), // Chế độ Dark Mode
      themeMode: Provider.of<ThemeModel>(context).isDarkMode == false
          ? ThemeMode.light
          : ThemeMode.dark,
      home: HomePage(),
    );
  }
}
