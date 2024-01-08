import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
              return Card(
                elevation: 5,
                // ignore: prefer_const_constructors
                margin: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 5,
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: FittedBox(
                        child: Text(
                          'R\$${tr.value}',
                          // ignore: prefer_const_constructors
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    tr.title,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    DateFormat('d MMM y').format(tr.date),
                  ),
                  trailing: MediaQuery.of(context).size.width > 480
                      ? TextButton.icon(
                          onPressed: () => onRemove(tr.id),
                          icon: Icon(
                            Icons.delete,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).errorColor,
                          ),
                          label: Text(
                            'Excluir',
                            style:
                                // ignore: deprecated_member_use
                                TextStyle(color: Theme.of(context).errorColor),
                          ),
                        )
                      : IconButton(
                          // ignore: prefer_const_constructors
                          icon: Icon(Icons.delete),
                          // ignore: deprecated_member_use
                          color: Theme.of(context).errorColor,
                          onPressed: () => onRemove(tr.id),
                        ),
                ),
              );
            },
          );
  }
}
