import 'package:flutter/material.dart';
import 'package:fooderlich/card_one.dart';
import 'package:fooderlich/card_three.dart';
import 'package:fooderlich/card_two.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    const CardOne(),
    const CardTwo(),
    const CardThree(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Card 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Card 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Card 3',
          ),
        ],
      ),
    );
  }
}
