import 'package:cc_task4/Screens/screen_7.dart';
import 'package:flutter/material.dart';

class Screen6 extends StatefulWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text(
            'Screen 6'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                  'button6'
              ),
              onPressed: (){
                Navigator.push(context , MaterialPageRoute(builder: (context)=> Screen7()));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              child: Text(
                  'button6.1'
              ),
              onPressed: (){
                Navigator.popAndPushNamed(context , '/Screen7');
              },
            ),
          ],
        ),
      ),
    );
  }
}
