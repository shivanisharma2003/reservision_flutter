import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rservision/CustomViewer/custom_Class/customClass.dart';

import '../../util/const_Color/constColor.dart';
import '../../util/const_String/constString.dart';
class NewTemplateScreen extends StatefulWidget {
  const NewTemplateScreen({super.key});
  @override
  State<NewTemplateScreen> createState() => _NewTemplateScreenState();
}
class _NewTemplateScreenState extends State<NewTemplateScreen> {
  var titleController=TextEditingController();
  var messageController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        flexibleSpace: appBarContent()
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
          child: Column(
            children: [
              CustomClass.addContactTextField("Title", titleController, (value){}),
              SizedBox(height: 20,),
              CustomClass.addContactTextField("Message", messageController, (value){}),
            ],
          ),
        ),
      )
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
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Text(ConstString.cancle_tex,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: ConstColor.white_Color),)),
          Text(ConstString.newTemplates_tex,style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600,color: ConstColor.white_Color),),
          Text(ConstString.done_tex,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: ConstColor.white_Color),),
        ],
      ),
    );
  }
}
