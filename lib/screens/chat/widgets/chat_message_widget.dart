import 'package:education_app/constants/color.dart';
import 'package:flutter/material.dart';


class ChatMessageWidget extends StatelessWidget {
  const ChatMessageWidget(
      {Key? key,
      required this.message,
      required this.sender,
      required this.isMe})
      : super(key: key);
  final String message;
  final String sender;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: isMe? CrossAxisAlignment.end :CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              sender,
              style:  TextStyle(
                 
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Material(
            borderRadius: BorderRadius.only(
                bottomRight:
                    isMe ? const Radius.circular(3) : const Radius.circular(22),
                bottomLeft:
                    isMe ? const Radius.circular(22) : const Radius.circular(3),
                topLeft: const Radius.circular(22),
                topRight: const Radius.circular(22)),
            color:
                isMe ? cPrimary: cAmethyst,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                message,
                style: TextStyle(
                  color: isMe ?cNavy: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
