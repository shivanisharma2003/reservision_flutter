
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rservision/viewer/aditContact_Screen/aditContactScreen.dart';

import '../../CustomViewer/custom_Class/customClass.dart';
import '../../util/assets_images/assetsImages.dart';
import '../../util/const_Color/constColor.dart';
import '../../util/const_String/constString.dart';
import '../addContact_Screen/addContactScreen.dart';
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});
  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}
class _ContactsScreenState extends State<ContactsScreen> {
  List<String> ListOfContacts = [
    "Adam Worlock",
    "Andrew Black",
    "Anna Anderson",
    "Broke Brown",
    "Balle Smith",
    "Ben Williams",
    "Chrish Evans",
    "Chrish Hamshworth",
    "Adam Worlock",
    "Andrew Black",
    "Anna Anderson",
    "Broke Brown",
    "Balle Smith",
    "Ben Williams",
    "Chrish Evans",
    "Chrish Hamshworth"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 158,
        flexibleSpace: appBarContent(),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30,right: 30),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount:ListOfContacts.length,
            itemBuilder: (BuildContext ,index){
              return InkWell(
                onTap: (){
                 Navigator.push(context ,MaterialPageRoute(builder: (context)=>EditContactScreen())
                 );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 11),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(ListOfContacts[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ConstColor.contactsDarkBlack_Color),
                      ),
                        SizedBox(height: 5,),
                      Text("(217) 234-4563",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: ConstColor.contactsLightBlack_Color),
                      ),
                        SizedBox(height: 7,),
                        Divider(color: ConstColor.divider_Color,),
                      ],
                    ),
                ),
              );
            }
            ),
      ),
    );
  }
  Widget appBarContent(){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFEB3349),
            Color(0xFFF45C43),
          ]
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55,left: 25,right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(ConstString.contacts_tex,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: ConstColor.white_Color),
              ),
               GestureDetector(onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> AddContactScreen(firstName: "",lastName: "",)));
               },
                   child: Image.asset(AssetsImages.appBar_img,width: 28,height: 28,)
               ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          CustomClass.customSearchBox(Icon(Icons.search_sharp,size: 28,), "Search"),
        ],
      ),
    );
  }
}
