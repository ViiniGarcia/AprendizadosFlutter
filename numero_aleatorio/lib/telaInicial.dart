import 'dart:math';

import 'package:flutter/material.dart';


class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  TextEditingController num = TextEditingController();

  String resultado = "";
  String aleatorio = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _barraInicial(),
      body: _corpo(),
    );
  }

  //metodos
  _barraInicial(){
    return AppBar(
      backgroundColor: Colors.lightBlueAccent,
      title: Text(
          "Número Aleatório"
      ),
    );
  }

  _corpo(){
    return Container(
      margin: EdgeInsetsDirectional.only(start: 50,end: 50),
      child: ListView(
        children: [
          SizedBox(height: 50,),
          _imagem(),
          _campo("Pense em um número de 0 a 10", num ),
          SizedBox(height: 10,),
          _botao("Descobrir"),
          SizedBox(height: 50,),
          _texto(aleatorio),
          _texto(resultado),
          SizedBox(height: 50,),
        ],
      ),
    );
  }

  _imagem(){
    return Container(
      child: Image.network(
        "https://cdn-icons-png.flaticon.com/512/752/752675.png",
        height: 100,
      ),
    );
  }

  _campo(String nome, TextEditingController variavel){
    return Container(
      child:
      TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: nome,
        ),
        controller: variavel,
      ),
    );
  }

  _texto(String texto){
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.lightBlueAccent,
        fontSize: 20,

      ),
    );
  }

  _botao(String nome){
    return ElevatedButton(onPressed: calcular,
      child: Text(
        nome,
      ),
      style: ElevatedButton.styleFrom(
          primary: Colors.lightBlueAccent,
      ),
    );
  }

  //funções
  void calcular(){
    setState(() {
      int numero = int.parse(num.text);
      int random = new Random().nextInt(10);
      aleatorio = random.toString();

      if(random == numero){
        resultado = "Ganhou!!";
      }else{
        resultado = "Não foi dessa vez!!";
      }
    });
  }
}
