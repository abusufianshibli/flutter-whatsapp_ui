import 'package:flutter/material.dart';
import 'package:facebookui/whatsapp_home.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatapp",
      theme: new ThemeData(primaryColor: Color(0xFF203841),
        accentColor:Color(0xFF395E57),
      ),
      home: WhatsAppHome(),
    );
  }
}

