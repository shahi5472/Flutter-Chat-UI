import 'package:chat_app_flutter/models/chat_message.dart';
import 'package:chat_app_flutter/modules/chat_details_page.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  ChatMessage chatMessage;

  ChatBubble({Key? key, required this.chatMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Align(
        alignment: chatMessage.type == MessageType.Receiver
            ? Alignment.topLeft
            : Alignment.topRight,
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: chatMessage.type == MessageType.Receiver
                ? Colors.white
                : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(chatMessage.message!),
        ),
      ),
    );
  }
}
