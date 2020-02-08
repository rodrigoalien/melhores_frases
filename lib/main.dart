import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful()

  ));

}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _frases = [
    'Transportai um punhado de terra todos os dias e fareis uma montanha. - Confúcio',
    'Se você nasceu pobre, não é erro seu. Mas se você morrer pobre, a culpa é sua - Bill Gates',
    'A vida nada mais é do que a soma de todos os hábitos.',
    'Não importa o quão forte você bate, mas sim o quanto você aguenta apanhar e ir adiante - Rocky Balboa',
    'Quer você acredite que consiga fazer uma coisa ou não, você está certo. - Henry Ford',
    'Quando você quer alguma coisa, todo o universo conspira para que você realize o seu desejo. - Paulo Coelho',
  ];

  var _fraseGerada = 'Clique abaixo para gerar uma frase!';

  void _gerarFrase(){

    var _numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[_numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Melhores frases'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        //decoration: BoxDecoration(
          //border: Border.all(width: 3, color: Colors.amber)
        //),
        // width: double.infinity, neste caso nao é necessário devido ao tamanho da imagem.
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Image.asset(
              'images/frases.jpg'
          ),
          Padding
            (padding: EdgeInsets.fromLTRB(20, 50, 20, 140),
            child: Text(
                _fraseGerada,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic
              ),
            ),
          ),
          RaisedButton(onPressed: _gerarFrase,
            child: Text('Nova Frase'),
            color: Colors.green,
            textColor: Colors.white,
          ),
        ],
      ),
      ),
    );
  }
}
