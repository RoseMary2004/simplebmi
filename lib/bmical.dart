import 'package:flutter/material.dart';
class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);


  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: Text('Bmicalculator')
    ),
      backgroundColor: Colors.indigo,
      body:Column(mainAxisAlignment: MainAxisAlignment.center,children:[
      TextField(controller:height,
      decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: 'Enter your Height',
    ),
        ),
      TextField(controller:weight,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter your Weight',
        ),
      ),
        TextButton(
            onPressed: () {
              setState(() {
                calculate();
              });
            },
            child: Text('Calculate')),
        Text(result.toString(),style:TextStyle(color:Colors.black),)
      ]),
    );

  }
}

