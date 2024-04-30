import '../../util/assets_images/assetsImages.dart';
import '../../util/const_Color/constColor.dart';
import '../../util/const_String/constString.dart';
import 'package:first_project/CustomViewer/custom_Class/customClass.dart';
import 'package:flutter/material.dart';
class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});
  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}
class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          toolbarHeight: 158,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFEB3349),
                Color(0xFFF45C43),
              ]
            ),
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 55,right: 20),
                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ConstString.messages_tex,style: TextStyle(fontSize:25,fontWeight: FontWeight.w600,color: ConstColor.white_Color),
                    ),
                    Image.asset(AssetsImages.appbar_icon,width: 30,height: 30,)
                  ],
                ),
              ),
              SizedBox(height: 25,),
              CustomClass.customSearchBox(Icon(Icons.search,size: 28,), "Search name, number or message"),
            ],
          ),
    ),
      ),
    );
  }
}
