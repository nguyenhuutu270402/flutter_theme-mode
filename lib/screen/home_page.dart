import 'package:flutter/material.dart';
import 'package:my_app/provider/theme_model.dart';
import 'package:my_app/screen/detail_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dark Mode'),
      ),
      body: Column(
        children: [
          Consumer<ThemeModel>(
            builder: (context, themeModel, _) {
              return ElevatedButton(
                onPressed: () => themeModel.toggleTheme(),
                child: Text(
                  themeModel.isDarkMode == false
                      ? 'Switch to Dark Mode'
                      : 'Switch to Light Mode',
                ),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailPgae(),
              ));
            },
            child: Text("Page Detail"),
          ),
          Consumer<ThemeModel>(
            builder: (context, themeModel, _) {
              return Transform.scale(
                scale: 2.5,
                child: Switch(
                  value: themeModel.isDarkMode,
                  onChanged: (value) {
                    themeModel.toggleTheme();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
