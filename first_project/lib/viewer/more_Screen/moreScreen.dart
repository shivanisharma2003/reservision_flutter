import 'package:flutter/material.dart';
class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: Center(
            child: Text("MoreScreen"),
          ),
        ),
      ),
    );
  }
}
