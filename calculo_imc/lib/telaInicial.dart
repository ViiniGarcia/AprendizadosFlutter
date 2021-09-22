import 'package:flutter/material.dart';


class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();

  String resultado = "";

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
      title: Text(
          "Calculo IMC"
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
          _campo("Peso", peso ),
          _campo("Altura", altura ),
          SizedBox(height: 10,),
          _botao("Verificar"),
          SizedBox(height: 50,),
          _texto(),
          SizedBox(height: 50,),
        ],
      ),
    );
  }

  _imagem(){
    return Container(
      child: Image.asset(
        "assets/images/imc.png",
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

  _texto(){
    return Text(
      resultado,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.green,
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
        primary: Colors.green,
      ),
    );
  }

  //funções
  void calcular(){
    setState(() {
      if(peso.text.isNotEmpty && altura.text.isNotEmpty){
        double alt = double.parse(altura.text);
        double pes = double.parse(peso.text);
        double imc = pes/(alt*alt);

        if(imc < 18.5){
          resultado = "Abaixo do peso";
        }else if(imc >= 18.5 && imc <= 24.9){
          resultado = "Peso Normal";
        }else if(imc >= 25 && imc <= 29.9){
          resultado = "Sobrepeso";
        }else if(imc >= 30 && imc <= 34.9){
          resultado = "Obesidade Grau I";
        }else if(imc >= 35 && imc <= 39.9){
          resultado = "Obesidade Grau II";
        }else{
          resultado = "Obesidade Grau III";
        }
      }else{
        resultado = "Digite os dois valores";
      }
    });
  }
}
