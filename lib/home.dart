import 'package:flutter/material.dart';
import 'tips.dart' as tipsCorona;
import 'data_dunia.dart' as dataDunia;
import 'data_indonesia.dart' as dataIndonesia;
import 'laporkan.dart' as laporkanKasus;

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    tipsCorona.TipsCorona(),
    dataDunia.DataDunia(),
    dataIndonesia.DataIndonesia(),
    laporkanKasus.LaporkanKasus(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text('Tips Corona'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_usage),
            title: Text('Data Dunia'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Data Indonesia'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            title: Text('Laporkan Kasus'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue[800],
        unselectedItemColor: Colors.blue[200],
        onTap: _onItemTapped,
      ),
    );
  }
}