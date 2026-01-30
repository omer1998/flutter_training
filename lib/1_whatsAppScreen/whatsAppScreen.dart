import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_basic_training/1_whatsAppScreen/SendingMessageComponent.dart';
import 'package:flutter_basic_training/1_whatsAppScreen/messageModel.dart';

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 1,
        centerTitle: false,
        leadingWidth: 44,
        backgroundColor: Color(0xFF168C4B),
        foregroundColor: Color(0xFFFFFFFF),
        title: Row(
          children: [
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadiusGeometry.circular(37),
              child: Image.asset(
                fit: BoxFit.cover,
                width: 37,
                height: 37,
                "./assets/images/profile_image.png",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("John Safwat"),
            ),
          ],
        ),
        leading: IconButton(
          icon: Image.asset(
            color: Colors.white,
            "assets/images/back_image.png",
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "./assets/images/Phone.png",
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "./assets/images/video.png",
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              width: 24,
              height: 24,
              "./assets/images/More-vertical.png",
            ),
          ),
        ],
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 17),
        decoration: BoxDecoration(
          color: Color(0xFF181818),
          image: DecorationImage(
            image: AssetImage("assets/images/background_image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: MessagesSection(messages: Message.messages)),
            SendingMessageComponent()
          ],
        )
      ),
    );
  }
}

class MessagesSection extends StatelessWidget {
  List<Message> messages;
  MessagesSection({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 8),
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        spacing: 16,
        children: messages.map((message) => MessageComponent(message: message)).toList()
      ),
    );
  }
}


class MessageComponent extends StatelessWidget {
  Message message;

  MessageComponent({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius = message.isMine
        ? BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          )
        : BorderRadius.only(
      topRight: Radius.circular(16),
      bottomRight: Radius.circular(16),
      bottomLeft: Radius.circular(16)
    );
    return Align(
      alignment: message.isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: message.isMine ? Color(0xFF232D36) : Color(0xFF168C4B),
            ),
            child: Column(
              crossAxisAlignment: message.isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Text(
                  message.text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),

                message.imageUrl != null
                    ? Image.network("https://picsum.photos/250?image=9", height: 170, width: 237, fit: BoxFit.fill,)
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

