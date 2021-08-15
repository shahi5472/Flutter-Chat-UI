import 'package:flutter/material.dart';

class ChatUserList extends StatelessWidget {
  String text;
  String secondaryText;
  String image;
  String time;
  bool isMessageRead;

  VoidCallback onPress;

  ChatUserList({
    Key? key,
    required this.text,
    required this.secondaryText,
    required this.image,
    required this.time,
    required this.isMessageRead,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(image),
                    maxRadius: 30,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(text),
                        SizedBox(height: 6),
                        Text(
                          secondaryText,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 12,
                color: isMessageRead == true ? Colors.pink : Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
