import 'package:flutter/material.dart';
class TemplatesScreen extends StatefulWidget {
  const TemplatesScreen({super.key});

  @override
  State<TemplatesScreen> createState() => _TemplatesScreenState();
}

class _TemplatesScreenState extends State<TemplatesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: Center(child: Text('Templates Screen')),
        ),
      ),
    );
  }
}
