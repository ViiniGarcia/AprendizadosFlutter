import 'package:app_conceitos/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(//widget pai de todos
//       debugShowCheckedModeBanner: false,//retira o banner de Debug
//       home: Teste(),//desenha a tela do app chamando o widget feito no home.dart
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//widget pai de todos
        debugShowCheckedModeBanner: false,//retira o banner de Debug
        home: Teste(),//desenha a tela do app chamando o widget feito no home.dart
    );
  }
}


