import 'package:flutter/material.dart';

import 'BottomNavigationBar.dart';
import 'Home_Page.dart';
var width;
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:BottomNavigatorExample(),
      ),
    );
  }
}
