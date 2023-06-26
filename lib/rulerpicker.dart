import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';

import 'main.dart';

class Height_Picker extends StatefulWidget {
  const Height_Picker({Key? key}) : super(key: key);

  @override
  State<Height_Picker> createState() => _Height_PickerState();
}

class _Height_PickerState extends State<Height_Picker> {
  TextEditingController? _controller;
  RulerPickerController? _rulerPickerController;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '0');
    _rulerPickerController = RulerPickerController(value: 10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(height: width*0.027,),
          Center(
            child: RulerPicker(
              rulerBackgroundColor: Colors.grey.shade50,
              controller: _rulerPickerController,
              beginValue: 0,
              selectedNumber: _rulerPickerController!.value,
              endValue: 500,
              onValueChange: (_val) {
                setState(() {
                  _controller?.text = _val.toString();
                });
              },
              width: width*0.8,
              height: width*0.3,
            ),
          ),
          Text(  'Your Height in cm ${_controller!.text}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: width*0.05),)
        ],
      ),
    );
  }
}
