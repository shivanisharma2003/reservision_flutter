import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../CustomViewer/custom_Class/customClass.dart';
import '../../CustomViewer/custom_Function/customFunction.dart';
import '../../util/assets_images/assetsImages.dart';
import '../../util/const_Color/constColor.dart';
import '../../util/const_String/constString.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class addContactScreen extends StatefulWidget {
  const addContactScreen({super.key});
  @override
  State<addContactScreen> createState() => _addContactScreenState();
}
class _addContactScreenState extends State<addContactScreen> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        flexibleSpace: appBarContent(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            child: (Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                addphoto(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    CustomClass.addContactTextField(
                        ConstString.firstname_tex, firstNameController),
                    SizedBox(
                      height: 25,
                    ),
                    CustomClass.addContactTextField(
                        ConstString.lastname_tex, lastNameController),
                    SizedBox(
                      height: 30,
                    ),
                    IntlPhoneField(
                      // focusNode: focusNode,
                      decoration: InputDecoration(
                        // labelText: 'Phone Number',
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(),
                        // ),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black), // Transparent border when focused
                        ),
                      ),
                      languageCode: "en",
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                      onCountryChanged: (country) {
                        print('Country changed to: ' + country.name);
                      },
                    ),
                  ],
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
  Widget appBarContent() {
    return Container(
      padding: EdgeInsets.only(top: 35, left: 12, right: 15),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFEB3349),
        Color(0xFFF45C43),
      ])),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ConstString.cencle_tex,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ConstColor.white_Color),
            ),
            Text(
              ConstString.add_Contact,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: ConstColor.white_Color),
            ),
            Text(
              ConstString.done_tex,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ConstColor.lightblack_Color),
            ),
          ],
        ),
      ),
    );
  }
  Widget addphoto() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(AssetsImages.addphoto_img, height: 115, width: 115),
        Column(
          children: [
            Text(
              ConstString.add_tex,
              style: TextStyle(
                  color: ConstColor.skyblue_Color,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              ConstString.photo_tex,
              style: TextStyle(
                  color: ConstColor.skyblue_Color,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
