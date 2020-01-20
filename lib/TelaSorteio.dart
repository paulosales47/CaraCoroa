import 'package:flutter/material.dart';

class TelaSorteio extends StatefulWidget {
  @override
  _TelaSorteioState createState() => _TelaSorteioState();

  bool coroa;
  String imagemMoeda;

  TelaSorteio(this.coroa){
   if(coroa)
     imagemMoeda = "images/moeda_coroa.png";
   else
     imagemMoeda = "images/moeda_cara.png";
  }

}

class _TelaSorteioState extends State<TelaSorteio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff61bd8c),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Image.asset(widget.imagemMoeda),
            ),
            GestureDetector(
              child: Image.asset("images/botao_voltar.png"),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
