import 'package:flutter/material.dart';


class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  MySnackbar(msg, context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text(
          "2. This is Status Screen..!",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          MySnackbar('Status Button Pressed', context);
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.text_snippet_outlined),
      ),
    );
  }
}
