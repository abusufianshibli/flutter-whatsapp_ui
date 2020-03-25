import 'package:flutter/material.dart';

class Stutas extends StatefulWidget {
  @override
  _StutasState createState() => _StutasState();
}

class _StutasState extends State<Stutas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF2C3E46),
      floatingActionButton: FloatingActionButton(
        backgroundColor:Color(0xFF139082) ,
        child: Icon(Icons.camera_alt,),
        onPressed: ()=> print("Camera"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: ExactAssetImage("images/sheble.jpg"),
              child: IconButton(icon: Icon(Icons.add_circle),padding: const EdgeInsets.only(top: 20.0,left: 15.0), onPressed: (){},color: Colors.cyan,),
            ),
            title: Text("My Stuats",style: TextStyle(
              color: Colors.white
            ),),
            subtitle: Text("Tap to add stutas update",style: TextStyle(
              color: Colors.grey
            ),
            ),
          ),
          Container(
            color: Colors.white10,
            width: MediaQuery.of(context).size.width,
            height: 18.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("Recently Update",style: TextStyle(color: Colors.grey),),
            ),
          ),
         ListTile(
         leading: CircleAvatar(
         backgroundImage: ExactAssetImage("images/sumaiya.jpg"),
          ),
         title: Text("Sumaiya Islam Mim",style: TextStyle(color: Colors.grey),),
         subtitle: Text("Just Now",style: TextStyle(color: Colors.grey),),
         ),
    ListTile(
    leading: CircleAvatar(
    backgroundImage: ExactAssetImage("images/shorv.jpg"),
    ),
    title: Text("Shunjid Rahman Showrov",style: TextStyle( color: Colors.grey),),
    subtitle: Text("2 hours ago",style: TextStyle(color: Colors.grey),),
    ),
        ]
      ),
    );
  }
}
