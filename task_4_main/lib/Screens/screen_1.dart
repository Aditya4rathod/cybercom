import 'package:flutter/material.dart';
import 'package:cc_task4/Screens/screen_2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Screen_1'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                'button1'
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              child: Text(
                  'MaybePOP'
              ),
              onPressed: (){
                Navigator.of(context).maybePop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
