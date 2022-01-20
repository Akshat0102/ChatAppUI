import 'package:flutter/material.dart';
import 'chat_messages.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _msg = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _onSubmit(String text) {
    _msg.clear();
    setState(() {
      _messages.insert(0, ChatMessage(text: text));
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: const IconThemeData(color: Colors.green),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _msg,
                decoration: const InputDecoration.collapsed(
                  hintText: "Enter the message",
                ),
                onSubmitted: _onSubmit,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 2.0),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () => _onSubmit(_msg.text),
              ),
            )
          ],
        ),
      ),
    );
  } //_textComposerWidget

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
            child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        )),
        const Divider(height: 1.0),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
