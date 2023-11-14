import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

final theme =Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar( title: Text('AppBar'),
      ),
      body:ListaBotones() ,
      floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         onPressed: ()=>theme.setTheme(ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lime,
          floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.lime)
         )),
      ),
    );
  }
}

class ListaBotones extends StatelessWidget{
@override
Widget build(BuildContext context){

  final theme = Provider.of<ThemeChanger>(context);

  return Column(
children:<Widget>[
FlatButton(child:Text('Light'),
onPressed :()=>theme.setTheme(ThemeData.light()),
),

FlatButton(child:Text('Dart'),
onPressed :()=>theme.setTheme(ThemeData.dark()),
),

] ,

  );
}

  FlatButton({required Text child, required Function() onPressed}) {}
}

class ThemeChanger {
  setTheme(ThemeData themeData) {}
}