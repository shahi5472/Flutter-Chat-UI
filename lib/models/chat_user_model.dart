class ChatUserModel {
  String? text;
  String? secondaryText;
  String? image;
  String? time;
  bool isMessageRead;

  ChatUserModel({
    this.text,
    this.secondaryText,
    this.image,
    this.time,
    required this.isMessageRead,
  });
}

List<ChatUserModel> chatUserModelList = [
  ChatUserModel(
    text: 'Marie Steward',
    secondaryText: 'Check out our other service RandomAPI',
    image: 'https://picsum.photos/200/300?random=',
    time: '10:00PM',
    isMessageRead: true,
  ),
  ChatUserModel(
    text: 'Flenn Walters',
    secondaryText: 'Check out our other service RandomAPI',
    image: 'https://picsum.photos/200/300?random=',
    time: '10:00PM',
    isMessageRead: false,
  ),
  ChatUserModel(
    text: 'Marcus Thompson',
    secondaryText: 'Check out our other service RandomAPI',
    image: 'https://picsum.photos/200/300?random=',
    time: '10:00PM',
    isMessageRead: false,
  ),
  ChatUserModel(
    text: 'Freddie Jones',
    secondaryText: 'Check out our other service RandomAPI',
    image: 'https://picsum.photos/200/300?random=',
    time: '10:00PM',
    isMessageRead: false,
  ),
  ChatUserModel(
    text: 'Jack Fowler',
    secondaryText: 'Check out our other service RandomAPI',
    image: 'https://picsum.photos/200/300?random=',
    time: '10:00PM',
    isMessageRead: false,
  ),
  ChatUserModel(
    text: 'Isaiah Hamilton',
    secondaryText: 'Check out our other service RandomAPI',
    image: 'https://picsum.photos/200/300?random=',
    time: '10:00PM',
    isMessageRead: false,
  ),
  ChatUserModel(
    text: 'Benjamin Murray',
    secondaryText: 'Check out our other service RandomAPI',
    image: 'https://picsum.photos/200/300?random=',
    time: '10:00PM',
    isMessageRead: false,
  ),
  ChatUserModel(
    text: 'Avery Henderson',
    secondaryText: 'Check out our other service RandomAPI',
    image: 'https://picsum.photos/200/300?random=',
    time: '10:00PM',
    isMessageRead: true,
  ),
  ChatUserModel(
    text: 'Richard Mccoy',
    secondaryText: 'Check out our other service RandomAPI',
    image: 'https://picsum.photos/200/300?random=',
    time: '10:00PM',
    isMessageRead: false,
  ),
  ChatUserModel(
    text: 'Clayton Ramirez',
    secondaryText: 'Check out our other service RandomAPI',
    image: 'https://picsum.photos/200/300?random=',
    time: '10:00PM',
    isMessageRead: false,
  ),
];
