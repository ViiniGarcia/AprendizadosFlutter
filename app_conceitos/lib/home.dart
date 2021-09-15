import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//classe = widget
class Teste extends StatefulWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  //objetos para variaveis
  TextEditingController numeroController = TextEditingController(); //busca o valor que foi digitado em um input
  //variavel para exibição
  String numero = "teste";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    );
  }

  //Metodos para criação da tela
  _corpo(){
    return Container(
      width: 250, //aumenta a largura do container
      color: Colors.black12, //define a cor amarela para o container
      child: Column( //cria uma coluna
        mainAxisSize: MainAxisSize.max, //define o tamanho da column ou row (até o fim da tela ou não)
        mainAxisAlignment: MainAxisAlignment.start, //define o alinhamento vertical (start, center, end)
        crossAxisAlignment: CrossAxisAlignment.center, //define o alinhamento horizontal (start, center, end)
        children: <Widget>[ //propriedades que ficarão dentro da Column container
          _campo(),//metodo criado
          _botao(),
          _texto(numero),
        ],
      ),
    );
  }
  _titulo(){
    return AppBar(
      title: Text("App Hello"),
      centerTitle: true,
    );
  }
  _campo(){
    return TextField(
      keyboardType: TextInputType.number, //define o tipo de teclado que aparecerá ao clicar no campo de texto
      decoration: InputDecoration(
          labelText: "Digite um numero", //texto do campo
          labelStyle:TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: numeroController,
    );
  }
  _texto(String text){
    return Text(text);
  }
  _botao(){
    return RaisedButton(
      color: Colors.green,
      //onPressed: null,
      //onPressed: () {
      //print("Okay!");
      //},
      onPressed: _exibeNumero,
      child: Text(
        "Ok",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }

  //funções
  void _exibeNumero(){ //função para exibir o numero
    setState(() {//seta o valor da variavel
      numero = numeroController.text; //define o valor da variavel para o que foi digitado
    });
  }
}




//Class Stateless

// class widgetHome extends StatelessWidget {
//   const widgetHome({Key? key}) : super(key: key);
//
//   //Construtor dos componentes
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _titulo(),
//       body: _corpo(),
//     );
//   }
//
// //Metodos para criação da tela
//   _titulo(){
//     return AppBar(
//       title: Text("App Hello"),
//       centerTitle: true,
//     );
//   }
//   _corpo(){
//     return Container(
//       width: 250, //aumenta a largura do container
//       color: Colors.black12, //define a cor amarela para o container
//       child: Column( //cria uma coluna
//         mainAxisSize: MainAxisSize.max, //define o tamanho da column ou row (até o fim da tela ou não)
//         mainAxisAlignment: MainAxisAlignment.start, //define o alinhamento vertical (start, center, end)
//         crossAxisAlignment: CrossAxisAlignment.center, //define o alinhamento horizontal (start, center, end)
//         children: <Widget>[ //propriedades que ficarão dentro da Column container
//           _campo(),//metodo criado
//           _botao(),
//           _texto(),
//         ],
//       ),
//     );
//   }
//   _campo(){
//     return TextField(
//       keyboardType: TextInputType.number, //define o tipo de teclado que aparecerá ao clicar no campo de texto
//       decoration: InputDecoration(
//         labelText: "Digite um numero", //texto do campo
//         labelStyle:TextStyle(color: Colors.green)),
//       textAlign: TextAlign.center,
//       style: TextStyle(color: Colors.green, fontSize: 25.0),
//     );
//   }
//   _texto(){
//     return Text("Hello Turma!");
//   }
//   _botao(){
//     return RaisedButton(
//       color: Colors.green,
//       //onPressed: null,
//       //onPressed: () {
//       //print("Okay!");
//       //},
//       onPressed: clicar,
//       child: Text(
//         "Ok",
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 30,
//         ),
//       ),
//     );
//   }
//
//   //funções dart
//   clicar(){
//     print("Clicou no botão");
//   }
// }

