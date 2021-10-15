import 'package:flutter/material.dart';

class Pessoal extends StatelessWidget {
  const Pessoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _corpo(),
      drawer: _menu(),
    );
  }

  _appBar(){
    return AppBar(
      title: Text("Home"),
    );
  }

  _corpo(){
    return Container(
      child: Text("data"),
    );
  }

  _menu(){
    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          children: [
            SizedBox(height: 20,),
            _imagemPerfil(),
            SizedBox(height: 20,),
            Center(
              child: _textoNome(),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(
                Icons.accessibility_new_rounded,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                  "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.book,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Formação",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.work_rounded,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Experiência",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _imagemPerfil(){
    return Container(
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png"),
        ),
      ),
    );
  }

  _textoNome(){
    return Text(
        "Vinicius Garcia",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}
