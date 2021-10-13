import 'package:flutter/material.dart';


class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();

  String nome = "";
  String idade = "";
  String dropdownSexo = ' ';
  String dropdownEscolaridade = ' ';
  double valorSlider = 100;
  bool switchValue = false;
  bool exibirResultado = false;

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
      title: const Text(
          "Abertura de conta"
      ),
    );
  }

  _corpo(){
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsetsDirectional.only(start: 15,end: 15),
        child: Column(
          children: [
            _campo("Nome", nomeController ),
            _campo("Idade", idadeController ),
            Row(
              children: [
                _texto("Sexo"),
                const SizedBox(width: 20,),
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
            Visibility(
              visible: exibirResultado,
                child:Column(
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
                        _texto(dropdownSexo),
                      ],
                    ),
                    Row(
                      children: [
                        _texto("Escolaridade"),
                        SizedBox(width: 20,),
                        _texto(dropdownEscolaridade),
                      ],
                    ),
                    Row(
                      children: [
                        _texto("Limite"),
                        SizedBox(width: 20,),
                        _texto(valorSlider.toStringAsFixed(0)),
                      ],
                    ),
                    Row(
                      children: [
                        _texto("Nacionalidade"),
                        SizedBox(width: 20,),
                        _texto(_nacionalidade()),
                      ],
                    ),
                  ],
                ),
            ),
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
        decoration: InputDecoration(
          labelText: nome,
        ),
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
    return ElevatedButton(onPressed: _confirmar,
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
      items: <String>[' ','Masculino','Feminino']
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
      items: <String>[' ','Fundamental','Medio','Superior']
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
      nome = nomeController.text;
      idade = idadeController.text;
      exibirResultado = true;
    });
  }
  String _nacionalidade(){
    if(switchValue){
      return "Brasileiro";
    }else{
      return "Não é brasileiro";
    }
  }
}