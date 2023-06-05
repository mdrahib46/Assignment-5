import 'package:flutter/material.dart';


class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,

      body: Center(child: Text('This is call\'s screen',style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),),),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.indigoAccent,
        child: Icon(Icons.phone),
      ),
    );
  }
}
