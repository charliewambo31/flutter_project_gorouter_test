import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, required String name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings',
        style: TextStyle(fontSize: 20,
        color: Colors.black87
        ))),
      
      body:const Center(
        child: Text("hello ",
        style: TextStyle(fontSize: 20,
        color: Colors.black87)),
      )
    );
  }
}