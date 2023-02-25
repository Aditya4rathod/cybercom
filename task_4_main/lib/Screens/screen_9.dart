import 'package:cc_task4/Screens/screen_10.dart';
import 'package:flutter/material.dart';

class Screen9 extends StatefulWidget {
  const Screen9({Key? key}) : super(key: key);

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text(
            'Screen 9'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                  'button9'
              ),
              onPressed: (){
                Navigator.push(context , MaterialPageRoute(builder: (context)=> Screen10()));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              child: Text(
                  'CanPOP'
              ),
              onPressed: (){
                Navigator.canPop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
