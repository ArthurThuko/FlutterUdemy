import 'dart:math';

import 'package:expenses/compoments/transaction_form.dart';

import 'package:flutter/material.dart';
import './compoments/transaction_form.dart';
import './compoments/transaction_list.dart';
import 'models/transaction.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _transactions = [
    Transaction(
        id: 't1', title: 'Conta #01', value: 310.76, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta #02', value: 310.76, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'Conta #03', value: 310.76, date: DateTime.now()),
    Transaction(
        id: 't4', title: 'Conta #04', value: 310.76, date: DateTime.now()),
    Transaction(
        id: 't5', title: 'Conta #05', value: 310.76, date: DateTime.now()),
    Transaction(
        id: 't6', title: 'Conta de Luz', value: 211.30, date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTrasaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTrasaction);
    });
  }

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TransactionForm(_addTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
        actions: <Widget>[
          IconButton(
            onPressed: () => _openTransactionFormModal(context),
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Gráfico'),
                elevation: 5,
              ),
            ),
            TransationList(_transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openTransactionFormModal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
