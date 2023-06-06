import 'package:flutter/material.dart';


class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {

  MySnackbar(msg, context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,

      body: Center(child: Text('3. This is call\'s screen',style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),),),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          MySnackbar('Call button Pressed', context);
        },
        backgroundColor: Colors.indigoAccent,
        child: Icon(Icons.phone),
      ),
    );
  }
}
