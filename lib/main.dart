import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/routes/routes.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'components/constants.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   runApp(FlashChat());}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
        scaffoldBackgroundColor:  color_principal,
      ),
      routes: getApplicationRoutes(),
      initialRoute: WelcomeScreen.id ,
    );
  }
}