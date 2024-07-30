import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/pages/call_screen.dart';
import 'package:whatsapp_flutter/pages/camera_screen.dart';
import 'package:whatsapp_flutter/pages/chat_screen.dart';
import 'package:whatsapp_flutter/pages/status_screen.dart';

class WhatsappHome extends StatefulWidget {
  final List<CameraDescription> cameras;

  WhatsappHome({required this.cameras});

  @override
  State<WhatsappHome> createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white, // Text color for the selected tab
          unselectedLabelColor:
              Colors.white, // Text color for the unselected tabs
          tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            Tab(
              text: 'CHATS',
              icon: Icon(
                Icons.chat,
                color: Colors.white,
              ),
            ),
            Tab(
              text: 'STATUS',
              icon: Icon(
                Icons.update,
                color: Colors.white,
              ),
            ),
            Tab(
              text: 'CALLS',
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(widget.cameras), // Use positional argument
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).hintColor,
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () => print('open chats'),
            )
          : null,
    );
  }
}
