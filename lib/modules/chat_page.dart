import 'package:chat_app_flutter/components/chat.dart';
import 'package:chat_app_flutter/models/chat_user_model.dart';
import 'package:chat_app_flutter/modules/chat_details_page.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
                child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chats',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.pink,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'New',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon:
                      Icon(Icons.search, size: 20, color: Colors.grey.shade400),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                      )),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUserModelList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ChatUserList(
                  text: chatUserModelList[index].text!,
                  secondaryText: chatUserModelList[index].secondaryText!,
                  image: chatUserModelList[index].image! + "$index",
                  time: chatUserModelList[index].time!,
                  isMessageRead: chatUserModelList[index].isMessageRead,
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChatDetailsPage(
                        chatUserModel: chatUserModelList[index],
                        index: index,
                      );
                    }));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
