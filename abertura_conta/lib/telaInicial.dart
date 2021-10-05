import 'package:flutter/material.dart';


class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();

  String dropdownSexo = 'Masculino';
  String dropdownEscolaridade = 'Fundamental';
  double valorSlider = 100;
  bool switchValue = false;

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
        margin: EdgeInsetsDirectional.only(start: 15,end: 15),
        child: Column(
          children: [
            Row(
              children: [
                _campo("Idade", idade ),
                //erro por causa da Row
          ],
            ),

            Row(
              children: [
                _texto("Sexo"),
                SizedBox(width: 20,),
                _dropdownSexo(),
              ],
            ),
            Row(
              children: [
                _texto("Escolaridade"),
                SizedBox(width: 20,),
                _dropdownEscolaridade(),
                SizedBox(width: 20,),
              ],
            ),
            Row(
              children: [
                _texto("Limite"),
                _slider(),
                _texto("R\$" + valorSlider.toStringAsFixed(0)),
              ],
            ),
            Row(
              children: [
                _texto("Brasileiro"),
                _switch(),
              ],
            ),
            SizedBox(height: 10,),
            _botao("Confirmar"),
            SizedBox(height: 50,),
            _texto(""),
            SizedBox(height: 50,),
          ],
        ),
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
      return TextField(
        keyboardType: TextInputType.text,
        controller: variavel,
    );
  }

  _texto(String texto){
    return Text(
      texto,
      textAlign: TextAlign.center,
    );
  }

  _botao(String nome){
    return ElevatedButton(onPressed: null,
      child: Text(
        nome,
      ),
    );
  }

  _dropdownSexo(){
    return DropdownButton<String>(
      value: dropdownSexo,
      onChanged: (String? newValue) {
        setState(() {
          dropdownSexo = newValue!;
        });
      },
      items: <String>['Masculino','Feminino']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  _dropdownEscolaridade(){
    return DropdownButton<String>(
      value: dropdownEscolaridade,
      onChanged: (String? newValue) {
        setState(() {
          dropdownEscolaridade = newValue!;
        });
      },
      items: <String>['Fundamental','Medio','Superior']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  _slider(){
    return Slider(
        value: valorSlider,
        min: 0,
        max: 15000,
        divisions: 150,
        label: valorSlider.round().toString(),
        onChanged: (double value){
          setState(() {
            valorSlider = value;
          });
        }
    );
  }

  _switch(){
    return Switch(
        value: switchValue,
        onChanged: (bool value) {
          setState(() {
            switchValue = value;
          });
        }
    );
  }


  void _confirmar(){
    setState(() {

    });
  }
}