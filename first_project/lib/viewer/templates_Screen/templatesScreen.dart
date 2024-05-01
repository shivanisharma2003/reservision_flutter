import 'package:first_project/util/const_String/constString.dart';
import 'package:flutter/material.dart';

import '../../CustomViewer/custom_Class/customClass.dart';
import '../../util/assets_images/assetsImages.dart';
import '../../util/const_Color/constColor.dart';

class TemplatesScreen extends StatefulWidget {
  const TemplatesScreen({super.key});

  @override
  State<TemplatesScreen> createState() => _TemplatesScreenState();
}

class _TemplatesScreenState extends State<TemplatesScreen> {
  List<String> ListOftemplates = [
    "What is Lorem Ipsum?",
    "Why do we use it?",
    "What is Lorem Ipsum?",
    "Why do we use it?",
    "What is Lorem Ipsum?",
    "Why do we use it?",
    "What is Lorem Ipsum?",
    "What is Lorem Ipsum?",
    "Why do we use it?",
    "What is Lorem Ipsum?",
    "Why do we use it?",
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
    padding: const EdgeInsets.only(top:10,left: 30,right: 25),
    child: ListView.builder(
            itemCount: ListOftemplates.length,
            itemBuilder: (Context, index) {
              return Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 14),
                    Text(
                      ListOftemplates[index],
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: ConstColor.darkblack_Color),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and type industry. Lorem Ipsum has been the industry dummy text",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: ConstColor.lightblack_Color),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 12),
                    Divider(height: 0,color: ConstColor.divider_Color,thickness: 1,),
                  ],
                );

            }
            ),
        ),
    );
  }

  Widget appBarContent() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFEB3349),
        Color(0xFFF45C43),
      ])),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 20, top: 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ConstString.templates_tex,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: ConstColor.white_Color),
                ),
                Image.asset(
                  AssetsImages.appBar_img,
                  height: 28,
                  width: 28,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          CustomClass.customSearchBox(
              Icon(
                Icons.search_rounded,
                size: 28,
              ),
              "Search"),
        ],
      ),
    );
  }
}
