import 'package:flutter/material.dart';

import '../../util/const_Color/constColor.dart';
class CustomAleartBox extends StatelessWidget {
  final String title, description, image;
  void Function() onTap;
  CustomAleartBox({
    required this.title,
    required this.description,
     required this.image,
    // required this.colors,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 250,
            width: 335,
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Column(
              children: [
                SizedBox(height: 60,),
                Text(title,style: TextStyle(
                  fontSize: 27,fontWeight: FontWeight.w600,color:ConstColor.orange_Color,
                ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Text(description,style: TextStyle(
                      fontSize: 12,fontWeight: FontWeight.w400,color: Color.fromRGBO(85, 85, 85, 1)
                  ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      GestureDetector(
                        onTap:onTap,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          height: 50,
                          width: 335,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(207, 207, 207, 1)
                          ),
                          child: Center(
                            child: Text("Okay",style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.w600,color: Color.fromRGBO(32, 32, 32, 1)
                            ),textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -45,
            child: Center(
              child: Container(
                height: 91,
                width: 91,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(45.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 2,  // Spread radius
                      blurRadius: 1,    // Blur radius
                      offset: Offset(0, 2), // Offset from the top-left corner
                    ),
                  ],
                ),
                 child: Center(child: Image.asset(image,width: 50,height: 50,fit:BoxFit.cover,color:ConstColor.orange_Color)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

