import 'package:flutter/material.dart';
import 'package:my_app/provider/theme_model.dart';
import 'package:provider/provider.dart';

class DetailPgae extends StatelessWidget {
  const DetailPgae({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ThemeModel>(
        builder: (context, themeModel, _) => ElevatedButton(
          onPressed: () => themeModel.toggleTheme(),
          child: Text(
            themeModel.themeMode == ThemeModeType.light
                ? 'Switch to Dark Mode'
                : 'Switch to Light Mode',
          ),
        ),
      ),
    );
  }
}
