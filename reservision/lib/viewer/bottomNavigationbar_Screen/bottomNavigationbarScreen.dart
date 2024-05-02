
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../util/assets_images/assetsImages.dart';
import '../../util/const_Color/constColor.dart';
import '../../util/const_String/constString.dart';
import '../contacts_Screen/contactsScreen.dart';
import '../messages_Screen/messagesScreen.dart';
import '../more_Screen/moreScreen.dart';
import '../templates_Screen/templatesScreen.dart';
class BottomNavigationbarScreen extends StatefulWidget {
  const BottomNavigationbarScreen({super.key});
  @override
  State<BottomNavigationbarScreen> createState() =>
      _BottomNavigationbarScreenState();
}
class _BottomNavigationbarScreenState extends State<BottomNavigationbarScreen> {
  int pageIndex = 0;
  final List<Widget> pages = [
    const MessagesScreen(),
    const TemplatesScreen(),
    const ContactsScreen(),
    const MoreScreen(),
  ];
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: navigationManager(),
    );
  }
  Widget navigationManager() {
    return StatefulBuilder(
        builder: (context, StateSetter setState) {
          return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.zero,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: kBottomNavigationBarHeight,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navBarItems(0, AssetsImages.message_img, ConstString.messages_tex),
            navBarItems(1, AssetsImages.templates_img, ConstString.templates_tex),
            navBarItems(2, AssetsImages.contacts_img, ConstString.contacts_tex),
            navBarItems(3, AssetsImages.more_img, ConstString.more_tex),
          ],
        ),
      ),
    );
        });
  }
  Widget navBarItems(int index,String imageName,msgText){
    return GestureDetector(
          onTap: () {
            setState(() {
              pageIndex = index;
            });
          },
          child: Column(
            children: [
              Image.asset(
                imageName,
                height: 25,
                width: 25,
                color: pageIndex == index? ConstColor.orange_Color:ConstColor.lightblack_Color,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                msgText,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: pageIndex==index ?ConstColor.darkblack_Color:ConstColor.lightblack_Color),
              ),
            ],
          ),
        );
  }
}
