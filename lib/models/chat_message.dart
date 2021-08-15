import 'package:chat_app_flutter/modules/chat_details_page.dart';

class ChatMessage {
  String? message;
  MessageType? type;

  ChatMessage({this.message, this.type});
}

List<ChatMessage> chatMessageList = [
  ChatMessage(message: 'Adsafds', type: MessageType.Sender),
  ChatMessage(message: 'Bqrewr', type: MessageType.Receiver),
  ChatMessage(message: 'Ccxzvxcv', type: MessageType.Sender),
  ChatMessage(message: 'Djurjt', type: MessageType.Receiver),
  ChatMessage(message: 'Edfbeesg', type: MessageType.Sender),
  ChatMessage(message: 'F[aopj', type: MessageType.Receiver),
  ChatMessage(message: '12309uw8r92G', type: MessageType.Sender),
  ChatMessage(message: 'Hp[kalmvs', type: MessageType.Receiver),
  ChatMessage(message: 'I-0989gjkm', type: MessageType.Receiver),
  ChatMessage(message: 'I-0989gjkm', type: MessageType.Sender),
  ChatMessage(message: 'I-0989gjkm', type: MessageType.Receiver),
  ChatMessage(message: 'I-0989gjkm', type: MessageType.Sender),
  ChatMessage(message: 'I-0989gjkm', type: MessageType.Receiver),
  ChatMessage(message: 'I-0989gjkm', type: MessageType.Sender),
  ChatMessage(message: 'I-0989gjkm', type: MessageType.Sender),
  ChatMessage(message: 'I-0989gjkm', type: MessageType.Receiver),
  ChatMessage(message: 'I-0989gjkm', type: MessageType.Receiver),
  ChatMessage(message: 'I-0989gjkm', type: MessageType.Sender),
];
