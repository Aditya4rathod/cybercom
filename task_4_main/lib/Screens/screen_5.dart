import 'package:cc_task4/Screens/screen_1.dart';
import 'package:cc_task4/Screens/screen_2.dart';
import 'package:cc_task4/Screens/screen_6.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text(
            'Screen5'
        ),
      ),
      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                  'button5.1'
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (c) => Screen6()));
              },
            ),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          child: Text(
              'pushAndRemoveUntil_route_false'
          ),
          onPressed: (){
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (c)=> MyHomePage()), (route) => false);
          },
        ),
        SizedBox(
          height: 15,
        ),

        ElevatedButton(
          child: Text(
              'pushAndRemoveUntil_modalroute'
          ),
          onPressed: (){
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (c)=> Screen2()), ModalRoute.withName('/'));
          },
        ),
      ]),
      ));
  }
}
