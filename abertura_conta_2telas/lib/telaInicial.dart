import 'package:abertura_conta_2telas/telaResultado.dart';
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
  String sexo = ' ';
  String escolaridade = ' ';
  double limite = 100;
  bool switchValue = false;
  String nacionalidade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _barraInicial(),
      body: _corpo(context),
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

  _corpo(BuildContext context){
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
                _texto("R\$" + limite.toStringAsFixed(0)),
              ],
            ),
            Row(
              children: [
                _texto("Brasileiro"),
                _switch(),
              ],
            ),
            SizedBox(height: 10,),
            _botao("Confirmar", context),
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

  _botao(String nome, BuildContext context){
    return ElevatedButton(onPressed: (){
      _confirmar();
      _nacionalidade();
      _navegacao(context, TelaResultado(nome: nome, idade: idade, sexo: sexo, escolaridade: escolaridade, limite: limite, nacionalidade: nacionalidade));
    },
      child: Text(
        nome,
      ),
    );
  }

  _dropdownSexo(){
    return DropdownButton<String>(
      value: sexo,
      onChanged: (String? newValue) {
        setState(() {
          sexo = newValue!;
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
      value: escolaridade,
      onChanged: (String? newValue) {
        setState(() {
          escolaridade = newValue!;
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
        value: limite,
        min: 0,
        max: 15000,
        divisions: 150,
        label: limite.round().toString(),
        onChanged: (double value){
          setState(() {
            limite = value;
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

  _navegacao(BuildContext context, Widget tela) async{
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context){
              return TelaResultado(nome:nome, idade: idade, sexo: sexo, escolaridade: escolaridade , limite: limite, nacionalidade: nacionalidade,);
            }
        ),
    );
  }

  void _confirmar(){
    setState(() {
      nome = nomeController.text;
      idade = idadeController.text;
      _nacionalidade();
    });
  }

  void _nacionalidade(){
    if(switchValue){
      nacionalidade = "Brasileiro";
    }else{
      nacionalidade = "Não é brasileiro";
    }
  }
}