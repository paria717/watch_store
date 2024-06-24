import 'package:flutter/material.dart';
import 'package:watch_store/components/themes.dart';
import 'package:watch_store/screens/send_otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Store',
      theme: lightTheme(),
      home: SendOtpScreen(),
    );
  }
}
