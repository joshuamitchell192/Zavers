import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saverz/pages/home.dart';
import 'package:saverz/pages/placeholder.dart';

class Index extends StatefulWidget {
  Index({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    PlaceholderWidget(Colors.amber[800], "Transactions"),
    PlaceholderWidget(Colors.deepPurple, "Savings"),
  ];

  void onBottomNavBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
      HapticFeedback.vibrate();

    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    Color iconColor = Theme.of(context).primaryColor;

    return Scaffold(

      body: Container(
        alignment: Alignment.center,
        child: _pages[_selectedIndex],
      ),
      
      
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,
        onTap: onBottomNavBarTapped,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),

          BottomNavigationBarItem(
            icon: new Icon(Icons.compare_arrows),
            title: new Text('Transactions'),
          ),

          BottomNavigationBarItem(
            icon: new Icon(Icons.attach_money),
            title: new Text('Savings')
          ),
        ],
      ),

    );
  }
}