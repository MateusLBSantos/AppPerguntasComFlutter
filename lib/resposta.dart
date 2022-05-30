import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  // ignore: use_key_in_widget_constructors
  const Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(
          texto,
          style: const TextStyle(color: Colors.white),
        ),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
