import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _barraInicial(),
      body: _corpo(),
    );
  }
  
  _barraInicial(){
    return AppBar(
      backgroundColor: Colors.deepPurple,
      title: Text("Vagas"),
    );
  }
  _corpo(){
    return Container(
      child: ListView(
        padding: EdgeInsetsDirectional.all(10),
        children: [
          _card("Desenvolvedor Backend Jr","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod libero ut mi lacinia dapibus. Proin pretium magna eu magna venenatis, ac vehicula dui finibus.","R\$4.500,00", "vagas.1@vagas.com.br"),
          _card("Desenvolvedor FrontEnd Jr","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod libero ut mi lacinia dapibus. Proin pretium magna eu magna venenatis, ac vehicula dui finibus.","R\$3.200,00", "vagas.2@vagas.com.br"),
          _card("UI & UX Jr","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod libero ut mi lacinia dapibus. Proin pretium magna eu magna venenatis, ac vehicula dui finibus.","R\$3.500,00", "vagas.3@vagas.com.br"),
          _card("Desenvolvedor FrontEnd Pl","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod libero ut mi lacinia dapibus. Proin pretium magna eu magna venenatis, ac vehicula dui finibus.","R\$6.500,00", "vagas.4@vagas.com.br"),
          _card("Desenvolvedor Backend Sr","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod libero ut mi lacinia dapibus. Proin pretium magna eu magna venenatis, ac vehicula dui finibus.","R\$12.500,00", "vagas.5@vagas.com.br"),
          _card("ScrumMaster Pl","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod libero ut mi lacinia dapibus. Proin pretium magna eu magna venenatis, ac vehicula dui finibus.","R\$7.500,00", "vagas.6@vagas.com.br"),
        ],
      ),
    );
  }
  _card(titulo,nomeVaga, valor, contato){
    return Card(
      child: Container(
        padding: EdgeInsetsDirectional.all(20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _titulo(titulo),
            SizedBox(height: 20,),
            _salario(valor),
            SizedBox(height: 10,),
            _descricao(nomeVaga),
            SizedBox(height: 10,),
            _contato(contato),
          ],
        ),
      ),
    );
  }

  _descricao(String texto){
    return Text(
        texto,
      textAlign: TextAlign.justify,
    );
  }

  _titulo(String titulo){
    return Text(
      titulo,
      style: TextStyle(
        fontSize: 20,
        color: Colors.deepPurple,
      ),
    );
  }

  _contato(String contato){
    return Text(
    "$contato",
    );
  }

  _salario(String valor){
    return Text(
        "Salario: $valor",
      style: TextStyle(
        color: Colors.deepPurple,
      ),
    );
  }

}
