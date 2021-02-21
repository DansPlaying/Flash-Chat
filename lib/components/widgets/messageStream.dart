import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'messageBubble.dart';

class MessagesStream extends StatelessWidget {

  final FirebaseFirestore firestore;
  final User actualUser;
  MessagesStream({@required this.firestore, @required this.actualUser});

  @override
  Widget build(BuildContext context) {

    List<MessageBubble> messagesBubbles = [];

    return StreamBuilder<QuerySnapshot>(
      stream: firestore.collection('messages').snapshots(),
      builder: (context, snapshot) {
        messagesBubbles = [];
        if (snapshot.hasData) {
          final messages = snapshot.data.docs;

          for (var message in messages) {
            final messageText = message['text'];
            final senderText = message['sender'];
            final currentUser=  actualUser.email;

            final messageBubble = MessageBubble(
              sender: senderText,
              text: messageText,
              isMe: (currentUser==senderText),
            );

            messagesBubbles.add(messageBubble);
          }
          return ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 20.0,
            ),
            children: messagesBubbles,
          );
        } else
          return Container(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
      },
    );
  }
}
