import 'package:cc_taskkk2/day_type.dart';
import 'package:flutter/material.dart';



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
            'Update Calender',
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.indigo,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Click on colored circle to change/switch day type',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      tileColor: Colors.indigo,
                      leading: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                        size: 35,
                      ),
                      title: Text(
                        'Default Calender',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'W',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                SizedBox(
                                  height: 23,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                SizedBox(
                                  height: 23,
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                SizedBox(
                                  height: 23,
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                SizedBox(
                                  height: 23,
                                ),
                                Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                SizedBox(
                                  height: 23,
                                ),
                                Text(
                                  '5',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Sun',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Mon',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Tue',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Wed',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Thu',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Fri',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Sat',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                GridView.builder(
                                    shrinkWrap: true,
                                    itemCount: 35,
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 7,
                                      mainAxisSpacing: 8,
                                      crossAxisSpacing: 6,
                                    ),
                                    itemBuilder: (context, index) {
                                      return DayTypeWidget();
                                    }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.indigo,
                            child: Text(
                              'F',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            'Full Day',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Text(
                              'HF',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            'Half Day',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.orange,
                            child: Text(
                              'WO',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            'Week Off',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                      child: Text(
                        'Save Work Calender',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

    );
  }
}
