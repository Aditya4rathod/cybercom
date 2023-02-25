import 'dart:html';

import 'package:cc_task4/Screens/screen_9.dart';
import 'package:flutter/material.dart';

class Screen8 extends StatefulWidget {
  const Screen8({Key? key}) : super(key: key);

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text(
            'Screen 8'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                  'button8'
              ),
              onPressed: (){
                Navigator.push(context , MaterialPageRoute(builder: (context)=> Screen9()));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              child: Text(
                  'PushReplacemeent'
              ),
              onPressed: (){
                Navigator
                    .of(context)
                    .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
                  return Screen9();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
