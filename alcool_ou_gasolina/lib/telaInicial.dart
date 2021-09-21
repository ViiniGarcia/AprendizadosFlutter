import 'package:flutter/material.dart';


class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  TextEditingController gasolina = TextEditingController();
  TextEditingController alcool = TextEditingController();

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
          "Álcool ou Gasolina"
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
          _campo("Valor Gasolina", gasolina ),
          _campo("Valor Alcool", alcool ),
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
        "assets/posto.png",
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
        color: Colors.blue,
        fontSize: 20,

      ),
    );
  }

  _botao(String nome){
    return ElevatedButton(onPressed: calcular,
        child: Text(
          nome,
        ),
    );
  }

  //funções
  void calcular(){
    setState(() {
      if(gasolina.text.isNotEmpty && alcool.text.isNotEmpty){
        double gas = double.parse(gasolina.text);
        double alc = double.parse(alcool.text);
        double result = alc/gas;

        if(result <= 0.7){
          resultado = "É melhor abastecer com Álcool";
        }else{
          resultado = "É melhor abastecer com Gasolina";
        }
      }else{
        resultado = "Digite os dois valores";
      }
    });
  }
}
