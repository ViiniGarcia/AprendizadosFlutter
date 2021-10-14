import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  TextEditingController valorInput = TextEditingController();
  String dropDe = 'Dolar';
  String dropPara = 'Dolar';
  String resultado = '';
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _barraInicial(),
      body: _corpo(),
    );
  }
  
  _barraInicial(){
    return AppBar(
      title: Text("Conversor moedas"),
    );
  }

  _corpo(){
    return Container(
      padding: EdgeInsetsDirectional.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              _texto('Valor:'),
              SizedBox(width: 10,),
              _campoTexto(),
            ],
          ),
          Row(
            children: [
              _texto('De:'),
              SizedBox(width: 10,),
              _dropdownDe(),
            ],
          ),
          Row(
            children: [
              _texto('Para:'),
              SizedBox(width: 10,),
              _dropdownPara(),
            ],
          ),
          _botao("Converter"),
          SizedBox(height: 20,),
          Visibility(
            visible: visible,
              child: _resultado(resultado),
          )
        ],
      ),
    );
  }

  _texto(String texto){
    return Text(
        texto,
      style: TextStyle(
        fontSize: 20
      ),
    );
  }

  _campoTexto(){
    return Container(
      width: 200,
        child:TextField(
          keyboardType: TextInputType.number,
          controller: valorInput,
        ),
    );
  }
  
  _dropdownDe(){
    return DropdownButton(
      value: dropDe,

        onChanged: (String? novoValor){
          setState(() {
           dropDe = novoValor!;
          });
        },

        items: <String>['Dolar', 'Euro', 'Real'].map<DropdownMenuItem<String>>((String valor){
          return DropdownMenuItem<String>(
            value: valor,
            child: Text(valor),
          );
        }).toList(),
    );
  }

  _dropdownPara(){
    return DropdownButton(
      value: dropPara,

      onChanged: (String? novoValor){
        setState(() {
          dropPara = novoValor!;
        });
      },

      items: <String>['Dolar', 'Euro', 'Real'].map<DropdownMenuItem<String>>((String valor){
        return DropdownMenuItem<String>(
          value: valor,
          child: Text(valor),
        );
      }).toList(),
    );
  }

  _botao(String texto){
    return ElevatedButton(
        onPressed: converter,
        child: Text(texto),
    );
  }

  _resultado(String texto){
    return Text(
        texto,
      style: TextStyle(
        color: Colors.green,
        fontSize: 30,
      ),
    );
  }

  void converter(){
    setState(() {
      double valor = double.parse(valorInput.text);
      switch(dropDe){
        case 'Dolar':
          if(dropPara == 'Euro'){
            double resul = valor * 0.86;
            resultado = "€"+resul.toStringAsFixed(2);
          }else if(dropPara == 'Real'){
            double resul = valor*5.51;
            resultado = "R\$"+resul.toStringAsFixed(2);
          }else{
            resultado = "\$"+valor.toStringAsFixed(2);
          }
          break;

        case 'Euro':
          if(dropPara == 'Dolar'){
            double resul = valor * 1.16;
            resultado = "\$"+resul.toStringAsFixed(2);
          }else if(dropPara == 'Real'){
            double resul = valor * 6.39;
            resultado = "R\$"+resul.toStringAsFixed(2);
          }else{
            resultado = "€"+valor.toStringAsFixed(2);
          }
          break;

        case 'Real':
          if(dropPara == 'Euro'){
            double resul = valor * 0.16;
            resultado = "€"+resul.toStringAsFixed(2);
          }else if(dropPara == 'Dolar'){
            double resul = valor * 0.18;
            resultado = "€"+resul.toStringAsFixed(2);
          }else{
            resultado = "R\$"+valor.toStringAsFixed(2);
          }
          break;
      }
      visible = true;
    });
  }
}
