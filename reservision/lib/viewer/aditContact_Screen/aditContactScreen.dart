import 'package:flutter/material.dart';
import 'package:rservision/CustomViewer/custom_Function/customFunction.dart';
import 'package:rservision/util/const_String/constString.dart';

import '../../util/const_Color/constColor.dart';
class AditContactScreen extends StatefulWidget {
  const AditContactScreen({super.key});

  @override
  State<AditContactScreen> createState() => _AditContactScreenState();
}

class _AditContactScreenState extends State<AditContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        flexibleSpace: appBarContent(),
      ),
    );
  }
  Widget appBarContent(){
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFEB3349),
            Color(0xFFF45C43),
          ]
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 4,right: 4,top: 45),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/images/ic_round-arrow-back.png",
                  width: CommonFunction.getWidth(context)/12,height:CommonFunction.getHeight(context)/12,),
                SizedBox(width: 5,),
                Text(ConstString.editScreenContacts_tex,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: ConstColor.white_Color),
                ),
              ],
            ),
            Text("Jofra",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: ConstColor.white_Color),
            ),
            SizedBox(width: 55),
            Text(ConstString.edit_tex,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: ConstColor.white_Color),
            ),
          ],
        ),
      ),
    );
  }
}
