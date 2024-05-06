import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import '../../CustomViewer/custom_Class/customClass.dart';
import '../../CustomViewer/custom_Function/customFunction.dart';
import '../../util/assets_images/assetsImages.dart';
import '../../util/const_Color/constColor.dart';
import '../../util/const_String/constString.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class AddContactScreen extends StatefulWidget {

  String firstName,lastName;

   AddContactScreen({super.key,required this.firstName, required this.lastName, });
  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}
class _AddContactScreenState extends State<AddContactScreen> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var count =false;
  var doneColor = Colors.yellow;
  File? _image;
  final picker =ImagePicker();
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    firstNameController.text =  widget.firstName;
    lastNameController.text =widget.lastName;
  }
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
                  addPhoto(),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomClass.addContactTextField(
                      ConstString.firstname_tex, firstNameController,(value){updateDoneColor();}),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomClass.addContactTextField(
                      ConstString.lastname_tex, lastNameController,(value){updateDoneColor();}),
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
              )
              ),
            ),
          ),
        ),
      ),
    );
  }
  //Image Picker function to get image from gallery
  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  //Image Picker function to get image from camera
  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }
  //Show options to get image from camera or gallery
  Future showOptions() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: const Text('Photo Gallery'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from gallery
              getImageFromGallery();
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Camera'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from camera
              getImageFromCamera();
            },
          ),
        ],
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
                ConstString.cancle_tex,
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
    return   InkWell(
      onTap: showOptions,
      child: Center(
          child:  Container(
              alignment: Alignment.center,
              height: CommonFunction.getHeight(context)/7.2,
              width:CommonFunction.getWidth(context)/3.5,
              decoration: BoxDecoration(border: Border.all(color: ConstColor.addContactFirstName_Color),
                borderRadius: const BorderRadius.all(Radius.circular(70),),
              ),
              child: _image == null?Text( ConstString.add_tex,
                style: TextStyle(
                    color: ConstColor.skyblue_Color,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ):

              ClipOval(
                child:SizedBox.fromSize(
                  size: const Size.fromRadius(70),
                  child: Image.file(_image!,
                    fit: BoxFit.cover,),),)
          )
        //  addPhoto(),
      ),
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
      }
      );
    }
  }

}
