import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) {
        final chat = dummyData[i];
        return Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(chat.avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    chat.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    chat.time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  chat.message,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
