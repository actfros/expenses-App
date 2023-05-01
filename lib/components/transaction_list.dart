import 'package:intl/intl.dart';
import '../models/transactions.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transactions> transactions;
  TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty ? Column(
        children: [
          SizedBox(height: 20,),
          Text( 
            'Nenhuma Transação Cadastrada!',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            child: Image.asset('assets/images/waiting.png',
              fit: BoxFit.cover,),
            
          ),
        ],
      ): ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {
          final tr = transactions[index];
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'R\$ ${tr.value.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tr.title,
                      style: Theme.of(context).textTheme.titleLarge,
                      
                    ),
                    Text(
                      DateFormat('d MMM y').format(tr.date), //package 'intl'
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
