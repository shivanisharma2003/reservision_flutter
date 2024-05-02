import 'package:flutter/material.dart';
import '../../CustomViewer/custom_Class/customClass.dart';
import '../../util/assets_images/assetsImages.dart';
import '../../util/const_Color/constColor.dart';
import '../../util/const_String/constString.dart';
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
     automaticallyImplyLeading: false,
       flexibleSpace: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             colors: [
               Color(0xFFEB3349),
               Color(0xFFF45C43),
             ]
           )
         ),
       ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                SizedBox(height: 35,),
                Image.asset(AssetsImages.moreScreen_img,width: 140,height: 140,),
                SizedBox(height: 15),
                Text(ConstString.ejConcierge_Ride,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: ConstColor.texejconcierge_Color),
                ),
                SizedBox(height: 330,),
                CustomClass.customButton("Sign out", null, () { })
               ],
            ),
          ),
        ),
      )
    );
  }
}
