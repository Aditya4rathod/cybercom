import 'package:cc_task4/Screens/screen_4.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
   // TextEditingController Name = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title : Text(
            'Screen 3'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         ElevatedButton(
          child: Text(
              'PushNamed'
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/Screen4');
          },
        ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              child: Text(
                  'PushNamedAndRemoveUntil'
              ),
              onPressed: (){
                Navigator.of(context).pushNamedAndRemoveUntil('/Screen2', ModalRoute.withName('/'),
                );
              },
            ),
            // SizedBox(
            //   height: 15,
            // ),
            // ElevatedButton(
            //   child: Text(
            //       'PushNamedAndRemoveUntil_bool'
            //   ),
            //   onPressed: (){
            //     Navigator.of(context).pushNamedAndRemoveUntil('/Screen2', (route) => false);
            //   },
            // ),

      ]),
      ));
  }
}
