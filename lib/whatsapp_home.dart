import 'package:flutter/material.dart';

import 'Tabs/calls_tab.dart';
import 'Tabs/camera_tab.dart';
import 'Tabs/chat_tab.dart';
import 'Tabs/stutas_tab.dart';


class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>with SingleTickerProviderStateMixin {

TabController _tabController;
  @override

  void initState(){
    super.initState();
    _tabController= TabController(vsync: this, initialIndex:1,length: 4);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(
          color: Colors.grey,fontWeight:FontWeight.bold
        ),),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.cyan,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt,color: Colors.grey,)),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",)
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.search,size: 30.0,color: Colors.grey,),
          ),
          Icon(Icons.more_vert,size: 25.0,color: Colors.grey,),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
          children: <Widget>[
            Camera(),
            Chats(),
            Stutas(),
            Calls(),
          ]
      ),
    );
  }
}

