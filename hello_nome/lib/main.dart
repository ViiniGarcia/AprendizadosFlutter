import 'package:flutter/material.dart';
import 'package:hello_nome/TelaInicial.dart';//import para que o dart use o flutter

//função main que inicia o app com o metodo runApp chamando a classe MyApp
void main() => runApp(MyApp());

//widget do flutter(classe) StateLessWidget = não grava nenhum estado, apenas exibe algo
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {//renderiza a tela
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.grey,
        ),
        home: TelaInicial()
    );
  }
}