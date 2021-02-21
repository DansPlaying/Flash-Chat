import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final String sender;
  final bool isMe;
  MessageBubble({@required this.text, @required this.sender, this.isMe});

  @override
  Widget build(BuildContext context) {
    Color backColour;
    Color textColor;
    double radiusTopLeft;
    double radiusTopRight;
    CrossAxisAlignment position;
    if (isMe) {
      backColour = Colors.lightBlueAccent;
      textColor = Colors.white;
      position = CrossAxisAlignment.end;
      radiusTopLeft = 30.0;
      radiusTopRight = 0.0;
    }
    else{
      backColour = Colors.white;
      textColor = Colors.grey[800];
      position = CrossAxisAlignment.start;
      radiusTopLeft = 0.0;
      radiusTopRight = 30.0;
    }

    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: position,
        children: [
          Text(
            sender,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey[100],
            ),
          ),
          SizedBox(height: 2.5),
          Material(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radiusTopLeft),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
              topRight: Radius.circular(radiusTopRight),
            ),
            elevation: 5.0,
            color: backColour,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: Text(
                '$text',
                style: TextStyle(
                  fontSize: 25.0,
                  color: textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
