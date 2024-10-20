import 'package:chat1/homepage.dart';
import 'package:chat1/pageview.dart';
import 'package:chat1/popup.dart';
import 'package:flutter/material.dart';

class Mychat1 extends StatefulWidget {
  const Mychat1({super.key});

  @override
  State<Mychat1> createState() => _Mychat1State();
}

class _Mychat1State extends State<Mychat1> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        backgroundColor: Colors.green,
        //ithi uriga button pedutinda ah page poyenthugu
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // ithi ne uriga ah page poyenthugu petinde button
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                //for navigation
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PopupPage()));
              },
            ),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.group),
            ),
            Tab(
              text: "chats",
            ),
            Tab(
              text: "status",
            ),
            Tab(
              text: "calls",
            )
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        Center(
          child: Text("This is Tab page 1"),
        ),
        contacts(),
        Center(
          child: Text("This is Tab page 3"),
        ),
      ]),
    );
  }
}
