import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF2C3E46),
      floatingActionButton: FloatingActionButton(
        backgroundColor:Color(0xFF139082) ,
        child: Icon(Icons.call,),
        onPressed: ()=> print(" Calling"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: ExactAssetImage("images/sumaiya.jpg"),
            ),
            title: Text("Sumaiya Islam Mim",style: TextStyle(color: Colors.grey),),
            subtitle: Row(
              children: <Widget>[
                Icon((Icons.arrow_downward),color: Colors.cyan,),
                Text("Today,11:50 PM",style: TextStyle(color: Colors.grey),),
              ],
            ),
            trailing: Icon(Icons.call,color: Colors.cyan,),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: ExactAssetImage("images/sumaiya.jpg"),
            ),
            title: Text("Sumaiya Islam Mim",style: TextStyle(color: Colors.grey),),
            subtitle: Row(
              children: <Widget>[
                Icon((Icons.arrow_downward),color: Colors.cyan,),
                Text("Today,10:40 PM",style: TextStyle(color: Colors.grey),),
              ],
            ),
            trailing: Icon(Icons.videocam,color: Colors.cyan,),
          ),
        ],
      ),
      );
  }
}
