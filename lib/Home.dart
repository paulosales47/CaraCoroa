import 'package:cara_coroa/TelaSorteio.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61bd8c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/logo.png"),
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: GestureDetector(
              child: Image.asset("images/botao_jogar.png"),
              onTap: (){

                bool coroa = Random().nextInt(2) == 1 ? true : false;

                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => TelaSorteio(coroa) ));

              },
            ),

          )
        ],
      ),
    );
  }
}
