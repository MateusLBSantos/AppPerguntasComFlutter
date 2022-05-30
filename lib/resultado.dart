import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionrio;

  // ignore: use_key_in_widget_constructors
  Resultado(this.pontuacao, this.quandoReiniciarQuestionrio);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Prabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(primary: Colors.blue),
          child: const Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: quandoReiniciarQuestionrio,
        )
      ],
    );
  }
}
