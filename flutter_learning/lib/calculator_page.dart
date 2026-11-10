import 'package:flutter/material.dart';
class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _resultText = "";

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar title
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculator'),
      ),
      //body
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 16.0,
                children: [
                  //num1
                TextField(
                controller: _controller1, //step 2: assigning it to 'controller:'
                decoration: const InputDecoration(
                  hintText: "num1",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
              ),

              //num2
              TextField(
                controller: _controller2, //step 2: assigning it to 'controller:'
                decoration: const InputDecoration(
                  hintText: "num2",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
              ),
                  //operator
                  TextField(
                    controller: _controller3, //step 2: assigning it to 'controller:'
                    decoration: const InputDecoration(
                      hintText: "operation",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {

                        if (_controller1.text.isEmpty && _controller2.text.isEmpty) {
                          _resultText = "Error: num1 & num2 are missing";
                          return;
                        } else if (_controller1.text.isEmpty) {
                          _resultText = "Error: num1 missing";
                          return;
                        } else if (_controller2.text.isEmpty) {
                          _resultText = "Error: num2 missing";
                          return;
                        }

                        double num1 = double.parse(_controller1.text);
                        double num2 = double.parse(_controller2.text);


                        String op = _controller3.text;

                        if (op == '+' || op == '-' || op == '*' || op == '/') {
                          if (op == '+') {
                            _resultText = "The answer is: ${num1 + num2}";
                          } else if (op == '-') {
                            _resultText = "The answer is: ${num1 - num2}";
                          } else if (op == '*') {
                            _resultText = "The answer is: ${num1 * num2}";
                          } else if (op == '/') {
                            if(num2 == 0){
                              _resultText = "Error: Can't divide by zero";
                            }
                            else{
                              _resultText = "The answer is: ${num1 / num2}";
                            }
                          }
                        } else {
                          _resultText = "Error: Invalid operator";
                        }
                      });

                    },
                  child: const Text('Calculate'),
                  ),
                  Text(
                    _resultText,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
            ]
        ),
    ),
    ),
    );
  }
}
