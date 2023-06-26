import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_todo_app/Home_Page.dart';


import 'main.dart';

class BottomNavigatorExample extends StatefulWidget {
  const BottomNavigatorExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorExample> createState() => _BottomNavigatorExampleState();
}

class _BottomNavigatorExampleState extends State<BottomNavigatorExample> {
  int indexnum = 0;
  List<dynamic> tabwidgets = [Home_Page(),Home_Page()];
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: _buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(1),
            bottom: Radius.circular(2),
          ),
          child: BottomAppBar(
            color: Colors.grey,
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home, size: 30),
                  color: index == 0 ? Colors.red : Colors.grey,
                  isSelected: false,
                  onPressed: () {
                    setState(() {
                      index = 0;

                    });

                    log('Home 0');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.account_circle, size: 30),
                  color: index == 1 ? Colors.red : Colors.grey,
                  onPressed: () {
                    setState(() {
                      index = 1;

                    });
                    log('Home 1');
                  },
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: tabwidgets.elementAt(indexnum),
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return InkWell(
      onTap: () {
        _showBottomSheet(context);
      },
      child: CircleAvatar(
        radius: 36,
        backgroundColor: Colors.black,
        child: Text("BMI",style: TextStyle(fontWeight: FontWeight.w600,fontSize: width*0.045,color: Colors.white)),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            height: width * 1,
            decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: Padding(
              padding: EdgeInsets.all(width * 0.03),
              child: Column(
                children: [
                  SizedBox(
                    height: width * 0.05,
                  ),
                  Text(
                    "Your BMI is ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: width * 0.03,
                  ),
                  Text("19.6 kg/m",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: width * 0.03,
                  ),
                  Text("(Normal)",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: width * 0.03,
                  ),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.w200)),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.save_alt_outlined,color: Colors.white,size: width*0.05,),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Icon(Icons.share,color: Colors.white,size: width*0.05,),

                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
