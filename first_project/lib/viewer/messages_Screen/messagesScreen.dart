import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

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
  var listOfMessages = [
    "Smith Graffy",
    "(3223)562-6852",
    "Jonathan Major",
    "Adam Worlock",
    "Chrish Hamshworth",
    "(323)685-2478",
    "Nick Fury",
    "(323)685-2458"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 158,
        flexibleSpace: appBarContent(),
      ),
      body: ListView.builder(
        shrinkWrap: true,
       // physics: const NeverScrollableScrollPhysics(),
        itemCount: listOfMessages.length,
        itemBuilder: (context, index) {
          return listItem(index);
        },
      ),
    );
  }

  Widget appBarContent() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFFEB3349),
          Color(0xFFF45C43),
        ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 55, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ConstString.messages_tex,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: ConstColor.white_Color),
                ),
                Image.asset(
                  AssetsImages.appBar_img,
                  width: 30,
                  height: 30,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomClass.customSearchBox(
              const Icon(
                Icons.search,
                size: 28,
              ),
              "Search name, number or message"),
        ],
      ),
    );
  }

  Widget listItem(int index){
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              width: 1, color: ConstColor.containerBottom_Color),
        ),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                listOfMessages[index],
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: ConstColor.darkblack_Color),
              ),
              const Text(
                "2:25 PM",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "I need to cancel",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: ConstColor.lightblack_Color),
          ),
        ],
      ),
    );
  }
}
