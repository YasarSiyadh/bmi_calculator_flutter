import 'package:flutter/material.dart';
import 'package:project_todo_app/rulerpicker.dart';

import 'Weight.dart';
import 'main.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  bool maleandfemale=false;
  int count=0;
  double _value = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: width*0.05,right: width*0.05,top: width*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("BMI Calculator",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w600,fontSize: width*0.075)),
            SizedBox(height: width*0.06,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    maleandfemale=!maleandfemale;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.45,
                    width: width*0.42,
                    decoration: BoxDecoration(
                      border:maleandfemale? Border.all(color: Colors.grey,):Border.all(color: Colors.black87,width: width*0.007),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Column(
                      children: [
                      Container(
                      height: width*0.3,
                      width: width*0.39,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18)
                      ),
                        child: Icon(Icons.male_rounded,color: Colors.deepOrangeAccent.shade200,size: width*0.23),
                      ),

                        Text("Male",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    maleandfemale=!maleandfemale;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.45,
                    width: width*0.42,
                    decoration: BoxDecoration(
                        border: maleandfemale? Border.all(color: Colors.black87,width: width*0.007):Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: width*0.3,
                          width: width*0.39,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18)
                          ),
                          child:Icon(Icons.female,color: Colors.pinkAccent.shade200,size: width*0.23),

                        ),

                        Text("Female",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: width*0.06,),
            Container(
              height: width*0.5,
              width: width*1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey)
              ),
              child: Height_Picker(),
            ),
            SizedBox(height: width*0.06,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: width*0.45,
                  width: width*0.42,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: width*0.01,),
                      Center(child: Text("Weight (in Kg)",style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w500),)),
                      SizedBox(height: width*0.07,),
                      Container(
                        height: width*0.3,
                        width: width*0.37,
                        color: Colors.white,
                        child: Weight_Picker(),
                      )
                    ],
                  ),
                ),
                Container(
                  height: width*0.45,
                  width: width*0.42,
                  decoration: BoxDecoration(
                      border:Border.all(color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: width*0.01,),
                      Center(child: Text("Age",style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w500),)),
                      SizedBox(height: width*0.07,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap:(){
                              if(count>0)
                                count--;
                              else{
                                count=0;
                              }
                              setState(() {

                              });

                },
                            child: Container(
                              height: width*0.08,
                              width: width*0.09,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)
                              ),

                              child: Icon(Icons.remove),
                            ),
                          ),
                          SizedBox(width: width*0.03,),
                          Text("$count",style: TextStyle(fontWeight: FontWeight.w500,fontSize: width*0.05)),
                          SizedBox(width: width*0.03,),
                          InkWell(
                            onTap: () {
                              count++;

                              setState(() {
                              });
                            },
                            child: Container(
                              height: width*0.08,
                              width: width*0.09,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.grey)
                              ),

                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }



}
