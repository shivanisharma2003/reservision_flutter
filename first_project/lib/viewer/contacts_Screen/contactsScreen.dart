import 'package:flutter/material.dart';
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.indigo,
          child: Center(
            child: Text("ContactsScreen",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
          )
        ),
      ),
    );
  }
}
