import 'package:chat_app_flutter/components/chat_bubble.dart';
import 'package:chat_app_flutter/components/chat_details_appbar.dart';
import 'package:chat_app_flutter/models/chat_message.dart';
import 'package:chat_app_flutter/models/chat_user_model.dart';
import 'package:flutter/material.dart';

enum MessageType { Sender, Receiver }

class ChatDetailsPage extends StatelessWidget {
  ChatUserModel chatUserModel;
  int? index;

  ChatDetailsPage({Key? key, required this.chatUserModel, this.index})
      : super(key: key);

  void showModel(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Center(
              child: Text('Model'),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatDetailsAppBar(
        personName: chatUserModel.text!,
        image: chatUserModel.image! + "$index",
      ),
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: chatMessageList.length,
            shrinkWrap: true,
            reverse: true,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: 10, bottom: 30),
            itemBuilder: (BuildContext context, int index) {
              return ChatBubble(chatMessage: chatMessageList[index]);
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 16, bottom: 10, right: 16),
              height: 80,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      showModel(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type message...',
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
