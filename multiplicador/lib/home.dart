import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController controllerN1 = TextEditingController();
  TextEditingController controllerN2 = TextEditingController();

  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    );
  }

  //metodos
_corpo(){
    return Container(
      child: Column(children:<Widget>[
        const SizedBox(height: 30),
        Row(children:[
          Expanded(
            child: _campo("Primeiro número",controllerN1),
          )
        ],),
        Row(children: [
          Expanded(
            child: _campo("Primeiro número",controllerN2),
          )
        ],),
        const SizedBox(height: 30),
        Row(children: [
          Expanded(
            child: _botao(),
          )
        ],),
        const SizedBox(height: 50),
        Row(children: [
          Expanded(
            child: _resultado(resultado),
          )
        ],)
        ],
      ),
    );
}
_titulo(){
    return AppBar(
      backgroundColor: Colors.black12,
      title: Text("Multiplicador de Números"),
    );
}
_campo(String label, TextEditingController txtController){
  return Container(
      margin: EdgeInsetsDirectional.only(start: 50.0,end: 50.0),
    child: TextField(
      keyboardType: TextInputType.number, //define o tipo de teclado que aparecerá ao clicar no campo de texto
      decoration: InputDecoration(
          labelText: label,//texto do campo
      ),
      textAlign: TextAlign.start,
      controller: txtController,
    )
  );
}
_botao(){
    return Container(
        margin: EdgeInsetsDirectional.only(start: 50.0,end: 50.0),
        child: ElevatedButton(onPressed: _calculo,
          child: Text("Calcular"),
        )
    );
}
_resultado(String resultado){
    return Center(
      child: Text(resultado,
        style: TextStyle(
          fontSize: 50,

      ),
      ),
    );
}

//funções
void _calculo(){
    setState(() {
      resultado =  (int.parse(controllerN1.text) * int.parse(controllerN2.text)).toString();
    });
}

}
