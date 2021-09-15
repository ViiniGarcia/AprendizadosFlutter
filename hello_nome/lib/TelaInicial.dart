import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("App Hello Vinicius")
        ),
      ),
      drawer: Container(
        color: Colors.orange,
        child: Center(
          child: Text("Hello Vinicius"),
        ),
      ),
      body: Container(
        color: Colors.black26,
        child: Center(
          child: Text("Hello\nVinicius!",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.black,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){print("Hello Vinicius");},
        backgroundColor: Colors.blue,
      ),
    );
  }
}
