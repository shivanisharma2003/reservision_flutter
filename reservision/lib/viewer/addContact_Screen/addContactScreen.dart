import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
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
  var phoneNumberController = TextEditingController();
  var count =false;
  var doneColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Unfocus keyboard when tapped anywhere on the screen
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
              child: (
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Center(child: addPhoto()),
                  const SizedBox(
                    height: 40,
                  ),
                  addContactTextField(
                      ConstString.firstname_tex, firstNameController),
                  const SizedBox(
                    height: 25,
                  ),
                  addContactTextField(
                      ConstString.lastname_tex, lastNameController),
                  const SizedBox(
                    height: 30,
                  ),
                  IntlPhoneField(
                    controller: phoneNumberController,
                    cursorColor: ConstColor.darkblack_Color,
                    flagsButtonPadding: const EdgeInsets.all(8),
                    dropdownIconPosition: IconPosition.trailing,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFFD4D4D4),
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFF333333),
                      )),
                      counterText: '',
                    ),
                    initialCountryCode: 'US',
                    onChanged: (phone) {
                      updateDoneColor();
                    },
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }

  Widget appBarContent() {
    return Container(
      padding: const EdgeInsets.only(top: 35, left: 12, right: 15),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFEB3349),
        Color(0xFFF45C43),
      ],),),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Text(
                ConstString.cencle_tex,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ConstColor.white_Color),
              ),
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
                  color: count ? ConstColor.white_Color : ConstColor.addContactFirstName_Color),
            ),
          ],
        ),
      ),
    );
  }

  Widget addPhoto() {
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

  void updateDoneColor() {
    if (firstNameController.text.isNotEmpty && lastNameController.text.isNotEmpty && phoneNumberController.text.isNotEmpty) {
      setState(() {
       count = true;
      });
    } else {
      setState(() {
        count = false;
      });
    }
  }



   Widget addContactTextField(String hintText,TextEditingController controller){
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
      onChanged: (value){
        updateDoneColor();

      },
    );
  }
}
