
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    WelcomeScreen.id      : (context) => WelcomeScreen(),
    RegistrationScreen.id : (context) => RegistrationScreen(),
    LoginScreen.id        : (context) => LoginScreen(),
    ChatScreen.id        : (context) => ChatScreen(),
  };
}
