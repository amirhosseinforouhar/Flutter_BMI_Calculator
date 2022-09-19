import "package:flutter/material.dart" ;
import 'package:my_app/widgets/bmi_text_field.dart';
import 'package:my_app/widgets/white_space.dart'; 


class Body extends StatefulWidget {

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  final TextEditingController _weightController = TextEditingController() ; 
  final TextEditingController _heightController = TextEditingController() ; 

  double resultBMI = 0 ; 
  String resultText = "" ; 

  void _calculateBMI() {
    setState(() {
      final weight = double.parse(_weightController.text);
      final height = double.parse(_heightController.text);

      resultBMI = weight / (height * height) ;
      
      if(resultBMI >= 25) {
        resultText = "OVERWEIGHT"; 
      }else if (resultBMI > 18.5) {
        resultText = "NORMAL" ; 
      }else {
        resultText = "UNDERWEIGHT";
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal : 16 , vertical : 25) , 
        child: Column(
            children : [
              Row(
                children: [
                  BMITextField(hintText: "weight" , controller : _weightController),
                  WhiteSpace(width: 16) , 
                  BMITextField(hintText: "height" , controller : _heightController),
                ],
              ), 
              WhiteSpace(height : 20) , 
              ElevatedButton(
                onPressed: _calculateBMI,
                child : const Text("Calculate")
              ),
              WhiteSpace(height: 40) , 
              Text(resultBMI.toStringAsFixed(2) , style: TextStyle(
                fontSize: 34 , 
                fontWeight: FontWeight.bold
              )),
              WhiteSpace(height: 20) , 
              Text(resultText , style: TextStyle(fontSize: 20))
            ]
          ),
      ),
    ); 
  }


}