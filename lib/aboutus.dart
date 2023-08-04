import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key, required String name});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        title: const Text('aboutUs', style: TextStyle(fontSize: 20,
            color: Colors.black87)),
      ),
      body:const Center(
        child: Text("hello world", style: TextStyle(fontSize: 20,
            color: Colors.black87)),
      )
    );
  }
}