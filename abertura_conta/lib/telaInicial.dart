import 'package:flutter/material.dart';


class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();

  String dropdownValor = "Sexo";

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
          "Abertura de conta"
      ),
    );
  }

  _corpo(){
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsetsDirectional.only(start: 50,end: 50),
        child: Column(
          children: [
            SizedBox(height: 50,),
            _campo("Nome", nome ),
            _campo("Idade", idade ),
            _dropdown(),
            SizedBox(height: 10,),
            _botao("Verificar"),
            SizedBox(height: 50,),
            _texto(""),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
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

  _texto(String texto){
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,

      ),
    );
  }

  _botao(String nome){
    return ElevatedButton(onPressed: null,
      child: Text(
        nome,
      ),
    );
  }

_dropdown() {
  return DropdownButton<String>(
    value: dropdownValue,
    icon: const Icon(Icons.arrow_downward),
    iconSize: 24,
    elevation: 16,
    style: const TextStyle(color: Colors.deepPurple),
    underline: Container(
      height: 2,
      color: Colors.deepPurpleAccent,
    ),
    onChanged: (String? newValue) {
      setState(() {
        dropdownValue = newValue!;
      });
    },
    items: <String>['One', 'Two', 'Free', 'Four']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
  );
}
