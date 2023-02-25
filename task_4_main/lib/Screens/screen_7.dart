import 'package:cc_task4/Screens/screen_8.dart';
import 'package:flutter/material.dart';

class Screen7 extends StatefulWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text(
            'Screen 7'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                  'button7'
              ),
              onPressed: (){
                Navigator.push(context , MaterialPageRoute(builder: (context)=> Screen8()));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              child: Text(
                  'pop'
              ),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            
          ],
        ),
        
      ),
    );
  }
}
