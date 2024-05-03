import '../../util/const_Color/constColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class CustomClass{
 static Widget CustomTextField(String hintText,Icon iconShow,TextEditingController controller,bool ispassword) {
   return TextField(
     controller: controller,
     obscureText: ispassword ? true : false,
     keyboardType: TextInputType.emailAddress,
     onTapOutside: (event) {
       FocusManager.instance.primaryFocus?.unfocus();
     },
     inputFormatters: [
       LengthLimitingTextInputFormatter(30)
     ],
     cursorColor: ConstColor.cursalBack_Color,
     decoration: InputDecoration(
       contentPadding: EdgeInsets.only(top: 10, bottom: 6,),
       isDense: true,
       prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
       prefixIcon: Padding(
         padding: const EdgeInsets.only(right: 10),
         child: iconShow,
       ),
       hintText: hintText,
       hintStyle: TextStyle(
         fontSize: 15,
         fontWeight: FontWeight.w400,
         color: Color(0xFF828282),
       ),
       enabledBorder: UnderlineInputBorder(
         borderSide: BorderSide(
             color: ConstColor.enabaleTextField_Color), // Bottom border color
       ),
       focusedBorder: UnderlineInputBorder(
         borderSide: BorderSide(color: ConstColor.darkblack_Color), // Bottom border color
       ),
     ),
     style: TextStyle(
       fontSize: 15,
       fontWeight: FontWeight.w600,
       color: Color(0xFF000000),
     ),
   );
 }
  static Widget customButton(String text ,Image? imageShow,VoidCallback onTap){
   return GestureDetector(
     onTap: onTap,
     child: Container(
      //height: 50,
      padding: EdgeInsets.only(top: 12,bottom: 12),
       decoration: BoxDecoration(
         gradient: LinearGradient(
           colors: [
             Color(0xFFEB3349),
             Color(0xFFF45C43),
           ],
         ),
         borderRadius: BorderRadius.circular(140),
       ),
      child:  Center(
        child: imageShow != null
            ?
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          imageShow,
          SizedBox(width: 15,),
          Text(text,style:  TextStyle(fontSize:16,fontWeight: FontWeight.w600,color: ConstColor.white_Color ),
          ),
        ],):Text(text,style: TextStyle(fontSize:16,fontWeight: FontWeight.w600,color: ConstColor.white_Color ),),
      ),
     ),
   );
  }
  static Widget customSearchBox(Icon iconShow,String text){
   return Padding(
     padding: const EdgeInsets.only(right: 20,left: 20),
     child: Container(
       height: 45,
       decoration: BoxDecoration(
         color: ConstColor.white_Color,
         borderRadius: BorderRadius.circular(54),
       ),
       child: Row(
         children: [
           SizedBox(width: 15,),
           iconShow,
           Expanded(
             flex: 1,
             child: Padding(
               padding: const EdgeInsets.only(left: 10,right: 15,bottom: 4),
               child: TextField(
                 onTapOutside: (event){
                   FocusManager.instance.primaryFocus?.unfocus();
                 },
                 cursorColor: ConstColor.darkblack_Color,
                 style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: ConstColor.darkblack_Color),
                decoration: InputDecoration(
                   border: InputBorder.none,
                  hintText: text,
                  hintStyle: TextStyle(
                    fontSize: 13,fontWeight: FontWeight.w300,color: ConstColor.lightblack_Color,
                  )
                 ),
               ),
             ),
           )
         ],
       ),
     ),
   );
  }
  static Widget addContactTextField(String hintText,TextEditingController controller){
   return  TextField(
     controller: controller,
     onTapOutside: (event){
       FocusManager.instance.primaryFocus?.unfocus();
     },
     inputFormatters: [
       LengthLimitingTextInputFormatter(30),
     ],
     cursorColor: ConstColor.cursalBack_Color,
     decoration: InputDecoration(
       enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(
             color: ConstColor.addContactTextField_Color,
           )
       ),
       focusedBorder: UnderlineInputBorder(
           borderSide: BorderSide(
             color: ConstColor.darkblack_Color,
           )
       ),
       hintText:hintText,
       hintStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: ConstColor.addContactFirstName_Color),
     ),
   );
  }
}

