import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
class Home extends StatefulWidget {
  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  int _currentIndex = 0;
  final List _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.green),
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kubera'),
        actions: [
          Icon(Icons.account_circle_outlined)
        ],
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreenAccent,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lightGreenAccent
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Analytics',
              backgroundColor: Colors.lightGreenAccent,
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.cloud),
              label: 'Receipts',
              backgroundColor: Colors.lightGreenAccent,
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.lightGreenAccent,
          ),

        ],
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}