// ignore_for_file: file_names

import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Bloco extends StatelessWidget {
  final Transaction tr;
  final void Function(String) onRemove;

  const Bloco({
    super.key,
    required this.tr,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
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
  }
}
