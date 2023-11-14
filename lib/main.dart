import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

MaterialApp(
  title: 'Flutter Ejemplo Tema Oscuro',
  //Tema Principal, se usa cuando no esta activo el modo oscuro
  theme: ThemeData(
    //Se india que este tema tiene un brillo luminoso
    brightness: Brightness.light,
    primarySwatch: Colors.pink,
  ),
);


            MaterialApp(
  title: 'Flutter Ejemplo Tema Oscuro',
  //Tema Principal, se usa cuando no está activo el modo oscuro
  theme: ThemeData(
    //Se indica que el tema tiene un brillo luminoso/claro
    brightness: Brightness.light,
    primarySwatch: Colors.pink,
  ),
  //Tema Oscuro, se usa cuando se activa el modo oscuro
  darkTheme: ThemeData(
    //Se indica que el tema tiene un brillo oscuro
    brightness: Brightness.dark,
    primarySwatch: Colors.pink,
  ),
            );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fuentes perrsonalizadas ',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fuentes Personalizdas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hola Mundo',
              style: GoogleFonts.dongle(
                color: Colors.indigoAccent,
                letterSpacing: 8.0,
                fontSize: 64,
              ),
            ),
            Text(
              'Hola Mundo',
              style: GoogleFonts.getFont(
                'Pacifico',
                color: Colors.amberAccent,
                fontSize: 50,
              ),
            ),
            Text(
              'Hola Mundo',
              style: GoogleFonts.rubikBeastly(
                textStyle: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.cyanAccent,
                      fontSize: 50,
                    ),
              ),
            ),
            Text(
              'Hola Mundo',
              style: GoogleFonts.taviraj(
                color: Colors.deepOrangeAccent,
                fontSize: 50,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
              ),







              
            ),


          ],
        ),
      ),
    );
  }
}
