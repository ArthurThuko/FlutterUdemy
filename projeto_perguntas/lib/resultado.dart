import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoTotal;
  final void Function() onReiniciarQuestionario;

  Resultado(this.pontuacaoTotal, this.onReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacaoTotal < 8) {
      return 'Parabéns!';
    } else if (pontuacaoTotal < 12) {
      return 'Você é foda!';
    } else if (pontuacaoTotal < 16) {
      return 'Impressionante!';
    } else {
      return 'CR7 SIIIIIIII!';
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
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        TextButton(
          onPressed: onReiniciarQuestionario,
          child: Text('Reiniciar?',
              style: TextStyle(color: Colors.blue, fontSize: 18)),
        )
      ],
    );
  }
}
