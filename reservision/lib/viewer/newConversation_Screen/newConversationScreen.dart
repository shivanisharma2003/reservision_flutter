import 'package:flutter/material.dart';

import '../../util/const_Color/constColor.dart';
class NewConversationScreen extends StatefulWidget {
  const NewConversationScreen({super.key});

  @override
  State<NewConversationScreen> createState() => _NewConversationScreenState();
}

class _NewConversationScreenState extends State<NewConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        flexibleSpace:appBarContent() ,
      ),
    );
  }
  Widget appBarContent(){
    return Container(
        padding: EdgeInsets.only(left: 12,right: 15,top: 55,bottom: 20),
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [
    Color(0xFFEB3349),
    Color(0xFFF45C43),
    ]
    ),
    ),
      child: Row(
        children: [
          Icon(Icons.arrow_back_rounded,size: 12,color: ConstColor.white_Color,)
        ],
      ),
    );
  }
}
