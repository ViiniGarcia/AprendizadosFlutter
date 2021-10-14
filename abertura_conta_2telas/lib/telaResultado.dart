import 'package:flutter/material.dart';
class TelaResultado extends StatelessWidget {
  String nome;
  String idade;
  String sexo;
  String escolaridade;
  double limite;
  String nacionalidade;
  TelaResultado({required this.nome, required this.idade, required this.sexo, required this.escolaridade, required this.limite, required this.nacionalidade,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _barraInicial(),
      body: _corpo(context),
    );
  }

  _barraInicial(){
    return AppBar(
      title: const Text(
          "Abertura de conta"
      ),
    );
  }

  _corpo(BuildContext context){
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              _texto("Nome"),
              SizedBox(width: 20,),
              _texto(nome),
            ],
          ),
          Row(
            children: [
              _texto("Idade"),
              SizedBox(width: 20,),
              _texto(idade),
            ],
          ),
          Row(
            children: [
              _texto("Sexo"),
              SizedBox(width: 20,),
              _texto(sexo),
            ],
          ),
          Row(
            children: [
              _texto("Escolaridade"),
              SizedBox(width: 20,),
              _texto(escolaridade),
            ],
          ),
          Row(
            children: [
              _texto("Limite"),
              SizedBox(width: 20,),
              _texto(limite.toStringAsFixed(0)),
            ],
          ),
          Row(
            children: [
              _texto("Nacionalidade"),
              SizedBox(width: 20,),
              _texto(nacionalidade),
            ],
          ),
        ],
      ),
    );
  }

  _texto(String texto){
    return Text(
      texto,
      textAlign: TextAlign.center,
    );
  }
}