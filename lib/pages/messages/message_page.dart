import 'package:flutter/material.dart';
class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("消息 (49)"),
        centerTitle: true,
      ),
      body: Container(
        child: const Text("消息"),
      )
    );
  }
}
