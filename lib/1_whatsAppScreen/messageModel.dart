class Message {
  String text;
  String? imageUrl;
  bool isMine;

  Message({required this.text, this.imageUrl, required this.isMine});

  static List<Message> messages = [
    Message(text: "hello from me", isMine: true),
    Message(text: "hi there", isMine: false, imageUrl: "https://dayoutinengland.com/england-nature-quiz/"),
    Message(text: "how are you?", isMine: true),
    Message(text: "I'm good thanks", isMine: false),
    Message(text: "great!", isMine: true),
    Message(text: "hello from me", isMine: true),
    Message(text: "hi there", isMine: false, imageUrl: "https://dayoutinengland.com/england-nature-quiz/"),
    Message(text: "how are you?", isMine: true),
    Message(text: "I'm good thanks", isMine: false),
    Message(text: "great!", isMine: true),
  ];
}
