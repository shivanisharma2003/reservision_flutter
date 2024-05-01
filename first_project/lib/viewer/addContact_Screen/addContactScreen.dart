import 'package:flutter/material.dart';

import '../../util/const_Color/constColor.dart';
class addContactScreen extends StatefulWidget {
  const addContactScreen({super.key});

  @override
  State<addContactScreen> createState() => _addContactScreenState();
}

class _addContactScreenState extends State<addContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: appBarContent(),
      ),

    );
  }

  Widget appBarContent() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFEB3349),
                Color(0xFFF45C43),
              ]
          )
      ),
      child: Row(
        children: [
          Text("ConstString.cencal_tex",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: ConstColor.white_Color),
          ),
          Text("ConstString.addContent_tex",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: ConstColor.white_Color),
          ),
          //Text("ConstString.")
        ],
      ),
    );
  }
}
