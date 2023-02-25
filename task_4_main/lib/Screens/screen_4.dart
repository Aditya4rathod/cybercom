import 'package:cc_task4/Screens/screen_5.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
   // Map<String , dynamic> arguments =ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
   // String arg1 =arguments['arg1'];
    return Scaffold(
      appBar: AppBar(
        title : Text(
            'Screen 4'
        ),
      ),
      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //  Text('name is : ${arg1}'),
        ElevatedButton(
          child: Text(
              'button4'
          ),
          onPressed: (){
            Navigator.push(context , MaterialPageRoute(builder: (context)=> Screen5()));
          },
        ),
      ]),
      ) );
  }
}
