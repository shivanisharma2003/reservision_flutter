
import 'package:flutter/material.dart';
import 'package:rservision/viewer/splash_Screen/splashScreen.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Changes by shivani
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ReserVision Messenger",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        splashColor: Colors.transparent,
        highlightColor:Colors.transparent,
        splashFactory:  NoSplash.splashFactory,
        useMaterial3: true,
      ),
       home:  SplashScreen(),
    );
  }
}

