import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FunChat"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/new_bg.jpg"),
                  fit: BoxFit.cover
            )
          ),
          child: const ChatScreen(),
        ),
      )
    );
  }
}
