import 'package:flutter/material.dart';
import '../Demo_Chats/Chats_demo.dart';
class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Color(0xFF2C3E46),
      floatingActionButton: FloatingActionButton(
        backgroundColor:Color(0xFF139082) ,
        child: Icon(Icons.message,),
        onPressed: ()=> print("Chats Box"),
      ),
      body: ListView.builder(
        itemCount: Demo.length,
        itemBuilder: (context,i)=>Column(
          children: <Widget>[
            Divider(
              height: 5.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: ExactAssetImage(Demo[i].Urls),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(Demo[i].Name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  Text(Demo[i].Time,style: TextStyle(color: Colors.grey,fontSize: 14.0),),

                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(Demo[i].Message,
                  style: TextStyle(
                      color: Colors.grey,fontSize: 16.0
                  ),),
              ),

            )
          ],
        ),)
      ,
    );
  }
}
