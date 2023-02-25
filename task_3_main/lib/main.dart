import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wp_search_bar/wp_search_bar.dart';

void main() {
  runApp(const MyApp());
}

abstract class StatusEnum {
  ///Reached Whatsapp Servers
  static String rcs = "RCS";

  ///Reached Other Person
  static String rcp = "RCP";

  ///Read By other Person
  static String rdp = "RDP";
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> data = [

    {'name': "Gokii", 'contact no': "7436028855", 'profile pic': "assets/images/1.jpg", 'id': "#1"},
    {'name': "Vikram", 'contact no': "7069258085", 'profile pic': "assets/images/2.jpg", 'id': "#2"},
    {'name': "Ujju", 'contact no': "7990929193", 'profile pic': "assets/images/3.jpeg", 'id': "#3"},
    {'name': "Hitarthi", 'contact no': "9429116895", 'profile pic': "assets/images/4.jpg", 'id': "#4"},
    {'name': "Nancy", 'contact no': "9328813130", 'profile pic': "assets/images/5.jpg", 'id': "#5"},
    {'name': "Riya", 'contact no': "9106605733", 'profile pic': "assets/images/6.jpg", 'id': "#6"},
    {'name': "Kuldeep", 'contact no': "9925736905", 'profile pic': "assets/images/7.jpg", 'id': "#7"},
    {'name': "Yash", 'contact no': "9898659574", 'profile pic': "assets/images/8.jpg", 'id': "#8"},
    {'name': "Ishan", 'contact no': "8401558628", 'profile pic': "assets/images/9.jpg", 'id': "#9"},
    {'name': "Tejpal", 'contact no': "7485961285", 'profile pic': "assets/images/10.jpg", 'id': "#10"},

  ];
  List<Map<String, dynamic>> filteredData = [];
  @override
  void initState() {
    filteredData = data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WPSearchBar(
        appBarBackgroundColor: const Color(0xff1f2c34),
        listOfFilters: const {
          'name': {
            'name': 'name',
            'selected': false,
            'title': 'Name',
            'operation': 'CONTAINS',
            'icon': Icons.supervised_user_circle_rounded,
          },
          'message': {
            'name': 'message',
            'selected': false,
            'title': 'Message',
            'operation': 'CONTAINS',
            'icon': Icon(Icons.message),
          },
          'read_by_person': {
            'name': 'read_by_person',
            'selected': false,
            'title': 'Read by Other Person',
            'operation': 'CONTAINS',
            'icon': Icon(
              Icons.checklist_sharp,
              color: Colors.blue,
            ),
          },
          'date': {
            'name': 'Date',
            'selected': false,
            'title': 'Date',
            'operation': 'CONTAINS',
            'icon': Icon(Icons.date_range),
          },
        },
        materialDesign: {
          'title': const {'text': 'WhatsApp'},
          'loadingIndicator': Transform.scale(
            scale: 0.5,
            child: CircularProgressIndicator(
              strokeWidth: 3,
            ),
          ),
        },
        onSearch: (filterSelected, value, operation) {
          filteredData = data.where((Map<String, dynamic> element) {
            var dataKey = filterSelected;

            if (dataKey != null) {
              if (dataKey == 'read_by_person') {
                dataKey = 'name';
                if (element['status'] == null ||
                    element['status'] != (StatusEnum.rdp)) {
                  return false;
                }
              }
            }

            if (value == null || value == '') {
              return true;
            }

            print(
                'Element ${element[dataKey]}, filter: ${dataKey}, value: ${value}');
            if (dataKey != null &&
                element[dataKey] != null &&
                element[dataKey]!.toLowerCase().contains(value.toLowerCase())) {
              return true;
            } else {
              if (element['name']!
                  .toLowerCase()
                  .contains(value.toLowerCase()) ||
                  element['message']!
                      .toLowerCase()
                      .contains(value.toLowerCase())) {
                return true;
              }
            }

            return false;
          }).toList();
          setState(() {
            filteredData;
          });
        },
        body: Container(
          decoration: const BoxDecoration(color: Color(0xff121b22)),
          child: ListView.builder(
              itemCount: filteredData.length,
              itemBuilder: (context, index) {
                var item = filteredData[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(item['name']![0].toUpperCase()),
                    backgroundColor: const Color(0xff00a982),
                  ),
                  title: Text(
                    item['name'].toString(),
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['message'].toString(),
                        style: const TextStyle(color: Color(0xff738088)),
                      ),
                      if (item['status'] == StatusEnum.rdp)
                        const Icon(
                          Icons.checklist_sharp,
                          color: Colors.blue,
                        ),
                      if (item['status'] == StatusEnum.rcs)
                        const Icon(
                          Icons.checklist_sharp,
                          color: Colors.grey,
                        ),
                      if (item['status'] == StatusEnum.rcp)
                        const Icon(Icons.check, color: Colors.grey, size: 16),
                    ],
                  ),
                  trailing: const Text(
                    '1:30 am',
                    style: TextStyle(color: Color(0xff738088)),
                  ),
                );
              }),
        ),
      ),
    );
  }
}