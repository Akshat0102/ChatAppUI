import 'package:flutter/material.dart';

const String _name = "Akshat";

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              child: Text(
                _name[0],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                _name,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: SizedBox(
                  child: Text(
                    text,
                    maxLines: 4,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white),
                  ),
                  width: 280.0,
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
