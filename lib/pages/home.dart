import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class ThemeNotifier with ChangeNotifier {
  ThemeData _currentTheme = ThemeData.light();

  ThemeData get currentTheme => _currentTheme;

  void setTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            title: 'Custom Theme App',
            theme: themeNotifier.currentTheme,
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Theme App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Personaliza el tema y las fuentes',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showThemeDialog(context);
              },
              child: Text('Cambiar Tema'),
            ),
          ],
        ),
      ),
    );
  }

  void _showThemeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Selecciona un Tema'),
          content: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Provider.of<ThemeNotifier>(context, listen: false)
                      .setTheme(ThemeData.light());
                  Navigator.pop(context);
                },
                child: Text('Tema Claro'),
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<ThemeNotifier>(context, listen: false)
                      .setTheme(ThemeData.dark());
                  Navigator.pop(context);
                },
                child: Text('Tema Oscuro'),
              ),
            ],
          ),
        );
      },
    );
  }
}
