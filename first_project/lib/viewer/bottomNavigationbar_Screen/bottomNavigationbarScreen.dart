import 'package:first_project/util/const_String/constString.dart';
import 'package:first_project/viewer/messages_Screen/messagesScreen.dart';
import 'package:flutter/material.dart';

import '../../util/const_Color/constColor.dart';
class BottomNavigationbarScreen extends StatefulWidget {
  const BottomNavigationbarScreen({super.key});

  @override
  State<BottomNavigationbarScreen> createState() => _BottomNavigationbarScreenState();
}

class _BottomNavigationbarScreenState extends State<BottomNavigationbarScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      MessagesScreen(),
    ];
    return Scaffold(
        body:pages[pageIndex],
      bottomNavigationBar: navigationManager(),

    );
  }
  navigationManager(){
    return Container(
      color: Colors.blue,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
             children: [
               Image.asset("assets/images/Chat_Active.png",height: 25,width: 25,),
               Text(ConstString.messages_tex,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color:ConstColor.darkblack_Color),),
             ],
           ),
            Column(
              children: [
                Image.asset("assets/images/mage_file.png",height: 25,width: 25,),
                Text(ConstString.messages_tex,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color:ConstColor.lightblack_Color),),
              ],
            )
          ],
        ),
      ),
    );
  }
}