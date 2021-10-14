import 'dart:ui';

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
      appBar: _titulo(),
      backgroundColor: Colors.grey,
      body: _corpo(),
    );
  }

  _titulo(){
    return AppBar(
      title: Text("Anuncios"),
      centerTitle: true,
    );
  }
  _corpo(){
    return Container(
      child: PageView(
        children: [
          _anuncio("Iphone 13 Pro","https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-13-pro-blue-select?wid=940&hei=1112&fmt=png-alpha&.v=1631652954000","R\$9.499,00"),
          _anuncio("Ipad mini","https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-mini-select-wifi-space-gray-202109?wid=940&hei=1112&fmt=png-alpha&.v=1629840743000","R\$6.199,00"),
          _anuncio("Macbook Pro","https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-spacegray-select-202011?wid=1280&hei=1190&fmt=jpeg&qlt=80&.v=1613672894000","R\$9.499,00"),
        ],
      ),
    );
  }
  _anuncio(String nomeProduto, String urlProduto, String valor){
    return Center(
        child:Card(
          margin: EdgeInsetsDirectional.only(start: 50, end: 50),
          clipBehavior: Clip.antiAlias,
          child: Container(
              padding: EdgeInsetsDirectional.all(10),
              child:Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  urlProduto,
                fit: BoxFit.cover,
              ),
                Text(
              nomeProduto,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
                SizedBox(height: 10,),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In nibh erat, mattis sed venenatis quis, posuere eu mi. Aenean vestibulum dignissim fringilla.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                Text(
                  valor,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10,),
                ],
              ),
          ),
        ),
    );
  }
}
