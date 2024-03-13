import 'package:flutter/material.dart';
import 'NavBar.dart';

class About extends StatefulWidget {
 @override
 State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
      title: Center(
        child: Text('About'),
      ) 
    ),
      body: const Center(
        child: Text('About us'),
      ),
    );
  }
}