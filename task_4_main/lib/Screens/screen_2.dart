import 'package:flutter/material.dart';
import 'package:cc_task4/Screens/screen_3.dart';


class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text(
        'Screen 2'
      ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
              'button2'
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen3()));
          },
        ),
      ),
    );
  }
}
