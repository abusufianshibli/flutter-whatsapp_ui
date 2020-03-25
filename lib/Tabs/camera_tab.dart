import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF2C3E46),
      floatingActionButton: FloatingActionButton(
        backgroundColor:Color(0xFF139082) ,
        child: Icon(Icons.camera,),
        onPressed: ()=> print("Camera"),
      ),
    );
  }
}
