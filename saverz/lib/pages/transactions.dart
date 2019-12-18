import 'package:flutter/material.dart';

class TransactionsPage extends StatefulWidget {
  TransactionsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {

  Container transactionTile() {
    return Container(
      child: Row (
        children: <Widget>[
          Text("Transaction 1")
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transactions",
          style: TextStyle(fontSize: 20),
        ),
      ),

      body: Center(
        child: ListView(
          children: <Widget>[

          ],
        ),
      )
    );
  }
}