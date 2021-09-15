import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    );
  }

  _corpo() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _texto(),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _botaoMais(),
              SizedBox(width: 80,),
              _botaoMenos(),
            ],
          ),
        ],
      ),
    );
  }
  //Metodos
  _titulo() {
    return AppBar(
      backgroundColor: Colors.cyan,
      title: Text("Contador de Pessoas"),
    );
  }
  _texto() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.blueGrey,
      ),
      child: Center(
        child: Text(
          contador.toString(),
          style: TextStyle(
              fontSize: 50, color: Colors.white),
        ),
      ),
    );
  }
  _botaoMais() {
    return Container(
        child: ElevatedButton(
          onPressed: _soma,
          child: Text(
            "+", style: TextStyle(fontSize: 30, color: Colors.white),),
          //style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 30),padding: EdgeInsetsDirectional.all(10)),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            fixedSize: MaterialStateProperty.all(Size(60, 60)),
          ),
        )
    );
  }
  _botaoMenos() {
    return Container(
        child: ElevatedButton(onPressed: _subtracao,
          child: Text(
            "-", style: TextStyle(fontSize: 30, color: Colors.white),),
          //style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 30),padding: EdgeInsetsDirectional.all(10)),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            fixedSize: MaterialStateProperty.all(Size(60, 60)),
          ),
        )
    );
  }

  //funções
  void _soma() {
    setState(() {
      contador++;
    });
  }
  void _subtracao(){
    setState(() {
      contador--;
    });
  }
}
