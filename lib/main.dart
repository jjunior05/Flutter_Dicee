import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Botão esquerdo foi pressionado!');
              },
              child: Image.asset("images/dice1.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Botão direito foi pressionado!');
              },
              child: Image.asset("images/dice2.png"),
            ),
          )
        ],
      ),
    );
  }
}
