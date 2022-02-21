import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  static String id = '/contact';
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ติดต่อเรา"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text("Contact Screen"),
      ),
    );
  }
}