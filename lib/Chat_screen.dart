import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  MySnackbar(msg, context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade600,
      body: Center(
        child: Text(
          '1. This is Chat\'s Screen..!',
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackbar('Chat button pressed', context);
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.chat),
      ),
    );
  }


}
