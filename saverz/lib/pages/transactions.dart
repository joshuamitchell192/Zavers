import 'package:flutter/material.dart';

class TransactionsPage extends StatefulWidget {
  TransactionsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {

  Container transactionTile(String title, double value) {

    IconData symbol;
    Color transactionColour;
    if (value >= 0) {
      symbol = Icons.add;
      transactionColour = Colors.red[400];
    } else {
      symbol = Icons.remove;
      transactionColour = Colors.green[400];
    }
    return Container(

      margin: const EdgeInsets.all(20),
      child: Row (
        children: <Widget>[
          Expanded(
            child: Text(title),
          ),

          Container(
            child: new Icon(symbol, color: transactionColour, size: 16,),
          ),

          Container(
            child: Text(value.abs().toStringAsFixed(2)),

          )
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

      body: ListView(
        children: <Widget>[
          transactionTile("Burrito Sent me Money", 10.5),
          Divider(),
          transactionTile("Sending Money to Burrito", -5.78),
          Divider(),
          transactionTile("Burrito Sent me Money", 10.5),
          Divider(),
          transactionTile("Sending Money to Burrito", -5.78),
          Divider(),
          transactionTile("Burrito Sent me Money", 10.5),
          Divider(),
          transactionTile("Sending Money to Burrito", -5.7456348),
          Divider(),
          transactionTile("Burrito Sent me Money", 10.5),
          Divider(),
          transactionTile("Sending Money to Burrito", -5.78),
          Divider(),
          transactionTile("Burrito Sent me Money", 10.5),
          Divider(),
          transactionTile("Sending Money to Burrito", -5.78),
          Divider(),
          transactionTile("Burrito Sent me Money", 10.5),
          Divider(),
          transactionTile("Sending Money to Burrito", -5.78),
          Divider(),
          transactionTile("Burrito Sent me Money", 10.9875),
          Divider(),
          transactionTile("Sending Money to Burrito", -5.78),
          Divider(),
          transactionTile("Burrito Sent me Money", 10.5),
          Divider(),
          transactionTile("Sending Money to Burrito", -5.78),
          Divider(),
          transactionTile("Burrito Sent me Money", 10.5),
          Divider(),
          transactionTile("Sending Money to Burrito", -5.78),
          Divider(),
          transactionTile("Burrito Sent me Money", 10.5),
          Divider(),
          transactionTile("Sending Money to Burrito", -5.78),
          Divider(),
        ],
      ),
    );
  }
}