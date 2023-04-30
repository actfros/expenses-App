// ignore_for_file: prefer_const_constructors

import './models/transactions.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _transactions = [
    Transactions(
      id: 't1',
      title: 'Bolsa preta',
      value: 250.30,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't2',
      title: 'Garrafa Agua',
      value: 211.30,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text(
                'Grafico',
              ),
            ),
          ),
          Card(
            child: (Text('Lista Transações')),
          )
        ],
      ),
    );
  }
}
