class Message {
  String text;
  String? imageUrl;
  bool isMine;

  Message({required this.text, this.imageUrl, required this.isMine});

  static Message myHelloMessage = Message(text: "hello from me", isMine: true);
  static Message msg2 = Message(text: "hi there", isMine: false, imageUrl: "https://dayoutinengland.com/england-nature-quiz/");
  static Message msg3 = Message(text: "how are you?", isMine: true);
  static Message msg4 = Message(text: "I'm good thanks", isMine: false);
  static Message msg5 = Message(text: "great!", isMine: true);
}
