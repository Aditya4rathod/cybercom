import 'package:cc_task4/Screens/screen_1.dart';
import 'package:flutter/material.dart';

class Screen10 extends StatefulWidget {
  const Screen10({Key? key}) : super(key: key);

  @override
  State<Screen10> createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text(
            'Screen 10'
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
              'button10'
          ),
          onPressed: (){
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
    );
  }
}
