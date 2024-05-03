import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rservision/CustomViewer/custom_Function/customFunction.dart';
import 'package:rservision/util/const_String/constString.dart';

import '../../util/assets_images/assetsImages.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Jofra Archer",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: ConstColor.darkblack_Color),
            ),
            SizedBox(height: 12),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("(555) 187-8885",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: ConstColor.darkblack_Color),
                ),
                Row(
                  children: [
                    Image.asset(AssetsImages.editContactMessage_img,width: 24,height: 24,color: ConstColor.darkblack_Color,),
                    SizedBox(width: 15),
                    Image.asset(AssetsImages.phone_img,width: 24,height: 24,),
                  ],
                )
              ],
            ),
            SizedBox(height: 12),
            Text("Jofra123@gmail.com",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ConstColor.darkblack_Color),
            ),
            SizedBox(height: 7),
            Text("Contact Added 12/18/24",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: ConstColor.lightblack_Color),
            ),
          ],
        ),
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
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset("assets/images/ic_round-arrow-back.png",
                    width: CommonFunction.getWidth(context)/12,height:CommonFunction.getHeight(context)/12,),
                ),
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
