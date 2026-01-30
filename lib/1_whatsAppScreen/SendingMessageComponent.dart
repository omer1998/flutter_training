import 'package:flutter/material.dart';

class SendingMessageComponent extends StatelessWidget {
  ValueChanged<String> onMessageTextChanged;
  Function onSend;
  SendingMessageComponent({super.key, required this.onMessageTextChanged, required this.onSend});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      child: Row(
        children: [
          Expanded(child: MessageField(
              onChanged: (message) {
                onMessageTextChanged(message);
              },
              onSend: () {
                onSend();
              }
          )),
          SizedBox(width: 8,),
          Container(
            width: 49,
            height: 49,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Color(0xFF168C4B),
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: (){}, icon: Image.asset("./assets/images/Mic.png"))
          )
        ],
      ),
    );
  }
}

class MessageField extends StatelessWidget {
  ValueChanged<String> onChanged;
  Function onSend;

  MessageField({super.key, required this.onChanged, required this.onSend});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      onChanged: (message) => onChanged(message),
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFFFFF),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        hint: Text(
          "Type a message ...",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        hintStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Color(0xFFFFFFFF),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only( left: 4),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              width: 24,
              height: 24,
              "./assets/images/Camera.png",
            ),
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: IconButton(
            onPressed: () {
              onSend();
            },
            icon: Image.asset(
              width: 24,
              height: 24,
              "./assets/images/Send.png",
            ),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(39),
          borderSide: BorderSide(color: Color(0xFF168C4B)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(39),
          borderSide: BorderSide(color: Color(0xFF168C4B)),
        ),
      ),
    );
  }
}
