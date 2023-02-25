import 'package:flutter/material.dart';

class DayTypeWidget extends StatefulWidget {
  const DayTypeWidget({Key? key}) : super(key: key);

  @override
  State<DayTypeWidget> createState() => _DayTypeWidgetState();
}

class _DayTypeWidgetState extends State<DayTypeWidget> {

  var text = 'F';
  var color = Colors.indigo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(text == 'F'){
          setState(() {
            text = 'HF';
            color = Colors.green;
          });
        }
        else if(text == 'HF'){
          setState(() {
            text = 'WO';
            color = Colors.orange;
          });
        }
        else{
          setState(() {
            text = 'F';
            color = Colors.indigo;
          });
        }
      },
      child: CircleAvatar(
        backgroundColor: color,
        child: Text(text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}