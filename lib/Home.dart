import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Welcome Home page"),
        actions: [Icon(Icons.notifications)],
      ),
      body: ListView(
        children: [
          
        ],
      ),
      
      
    );
  }
}