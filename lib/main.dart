import 'package:exposicion/pages/home.dart';
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
        title: const Text('FUENTES PERSONALIZADAS'),
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
              'Holaaaaa',
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
            ElevatedButton(onPressed: (){
             Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
            }, child:Text("home"))



          ],
        ),
      ),
    );
  }
}
