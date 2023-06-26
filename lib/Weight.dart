import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';

import 'main.dart';

class Weight_Picker extends StatefulWidget {
  const Weight_Picker({Key? key}) : super(key: key);

  @override
  State<Weight_Picker> createState() => _Weight_PickerState();
}

class _Weight_PickerState extends State<Weight_Picker> {
  TextEditingController? _controllerr;
  RulerPickerController? _rulerPickerControllerr;

  @override
  void initState() {
    super.initState();
    _controllerr = TextEditingController(text: '0');
    _rulerPickerControllerr = RulerPickerController(value: 10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Center(
            child: RulerPicker(
              rulerBackgroundColor: Colors.grey.shade50,
              controller: _rulerPickerControllerr,
              beginValue: 0,
              selectedNumber: _rulerPickerControllerr!.value,
              endValue: 500,
              onValueChange: (_val) {
                setState(() {
                  _controllerr?.text = _val.toString();
                });
              },
              width: width*0.8,
              height: width*0.16,
            ),
          ),
          SizedBox(height: width*0.02,),
          Text(  'Your Weight in Kg ${_controllerr!.text}',style: TextStyle(fontWeight: FontWeight.w800,fontSize: width*0.036),)
        ],
      ),
    );
  }
}
