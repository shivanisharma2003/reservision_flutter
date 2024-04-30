import 'package:first_project/CustomViewer/customAleartBox_Class/customAleartBoxClass.dart';
import 'package:first_project/util/assets_images/assetsImages.dart';
import 'package:first_project/viewer/bottomNavigationbar_Screen/bottomNavigationbarScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../../CustomViewer/custom_Class/customClass.dart';
import '../../util/const_Color/constColor.dart';
import '../../util/const_String/constString.dart';
import '../messages_Screen/messagesScreen.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({super.key});
  @override
  State<loginScreen> createState() => _loginScreenState();
}
class _loginScreenState extends State<loginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool checkValue = false;
  var checkgitup;
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 20, right: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 30,),
              Text(
                ConstString.welcome_to,
                style: TextStyle(
                    fontSize: 39,
                    fontWeight: FontWeight.w700,
                    color: ConstColor.darkblack_Color),
              ),
              Text(
                ConstString.reservision_tex,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: ConstColor.orange_Color),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                ConstString.your_dream,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ConstColor.darkblack_Color),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                ConstString.email_tex,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ConstColor.darkblack_Color),
              ),
              CustomClass.CustomTextField(
                ConstString.email_hinttex,
                Icon(
                  Icons.email_outlined,
                  size: 28,
                  color: ConstColor.orange_Color,
                ),
                emailController,
                false,
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                ConstString.password_tex,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ConstColor.lightblack_Color),
              ),
              CustomClass.CustomTextField(
                  ConstString.password_hinttex,
                  Icon(Icons.lock_outline_sharp,
                      size: 28, color: ConstColor.orange_Color),
                  passwordController,
                true,
                   ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Checkbox(
                            activeColor: ConstColor.orange_Color,
                            value: checkValue,
                            onChanged: (value) {
                              setState(() {
                                checkValue = value!;
                              });
                            }),
                      ),
                      Text(
                        ConstString.remember_me,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ConstColor.darkblack_Color),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      ConstString.forgot_password,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: ConstColor.orange_Color),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              CustomClass.customButton(ConstString.login_tex, null, () {
                validation();

              }),
              const SizedBox(
                height: 50,
              ),
              rowDivider(),
              const SizedBox(
                height: 45,
              ),
              CustomClass.customButton(
                  ConstString.google_tex,
                  Image.asset(
                   AssetsImages.googlelogo_img,
                    width: 19,
                    height: 19,
                  ),
                  () {}),

            ],
          ),
        ),
      ),
     
    );
  }
  double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  Widget rowDivider() {
    return Row(
      children: [
        Container(
          width: getWidth(context) / 3.2,
          height: 1,
          decoration: BoxDecoration(
            color: ConstColor.lightblack_Color,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Text(
            "Or Signin with",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ConstColor.darkblack_Color),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 3.2,
          height: 1,
          decoration: BoxDecoration(
            color: ConstColor.lightblack_Color,
          ),

        ),
      ],
    );
  }
  bool validation(){
    if (emailController.text.isEmpty) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return CustomAleartBox(
                title: ConstString.customAleart_title,
                description: ConstString.emailEmpty_description,
                image: "assets/images/mingcute_alert-line.png",
                onTap: () {
                  Navigator.pop(context);
                });
          });
    } else if (!RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$")
        .hasMatch(emailController.text.trim())) {
      showDialog(
          context: context,
          builder: (context) {
            return CustomAleartBox(
              title: ConstString.customAleart_title,
              description: ConstString.validEmail_description,
              image: "assets/images/mingcute_alert-line.png",
              onTap: () {
                Navigator.pop(context);
              },
            );
          });
    } else if (passwordController.text.isEmpty) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return CustomAleartBox(
                title: ConstString.customAleart_title,
                description:
                ConstString.passwordEmpty_description,
                image: "assets/images/mingcute_alert-line.png",
                onTap: () {
                  Navigator.pop(context);
                });
          });
    } else if (!RegExp(
        r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
        .hasMatch(passwordController.text.trim())) {
      showDialog(
          context: context,
          builder: (context) {
            return CustomAleartBox(
              title:  ConstString.customAleart_title,
              description: ConstString.validPassword_description,
              image: "assets/images/mingcute_alert-line.png",
              onTap: () {
                Navigator.pop(context);
              },
            );
          });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomNavigationbarScreen(),
      ),
      );
      return true;
    }
    return false;
  }
  }

