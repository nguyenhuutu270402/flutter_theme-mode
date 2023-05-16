import 'package:flutter/material.dart';
import 'package:my_app/provider/theme_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dark Mode'),
      ),
      body: Center(
        child: Consumer<ThemeModel>(
          builder: (context, themeModel, _) => ElevatedButton(
            onPressed: () => themeModel.toggleTheme(),
            child: Text(
              themeModel.themeMode == ThemeModeType.light
                  ? 'Switch to Dark Mode'
                  : 'Switch to Light Mode',
            ),
          ),
        ),
      ),
    );
  }
}
