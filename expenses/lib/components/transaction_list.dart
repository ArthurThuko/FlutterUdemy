import 'package:expenses/components/Bloco.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransationList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(String) onRemove;

  const TransationList(this.transactions, this.onRemove, {super.key});

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                children: <Widget>[
                  // ignore: prefer_const_constructors
                  SizedBox(height: 20),
                  // ignore: prefer_const_constructors
                  Text(
                    'Nenhuma Transação Cadastrada',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 20),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: constraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assest/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              );
            },
          )
        : ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (ctx, index) {
              final tr = transactions[index];
              return Bloco(
                tr: tr,
                onRemove: onRemove,
              );
            },
          );
  }
}
