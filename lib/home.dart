import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kubera'),
        backgroundColor: Colors.lightGreenAccent,
        centerTitle: true,

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.mail),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
              icon: const Icon(Icons.download_sharp),
              label: 'Downloads'
          ),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: 'Profile'
          )
        ],
      ),
    );
  }
}