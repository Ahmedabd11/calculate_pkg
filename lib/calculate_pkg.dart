library calculate_pkg;
import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import '';
/// A Calculator.
class CalculateWidget extends StatefulWidget {
  final Information information;
  const CalculateWidget({Key? key,required this.information}) : super(key: key);

  @override
  State<CalculateWidget> createState() => _CalculateWidgetState();
}

class Information{
  String name;
  String number;
  Information({required this.name,required this.number});
}

class _CalculateWidgetState extends State<CalculateWidget> {
  String enteredText = '';
  String operator = '';
  double result = 0;
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22252D),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Text(
                      widget.information.number.toString(),
                      style: const TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  TextButton(onPressed: (){
                    FlutterExitApp.exitApp();
                  }, child: Text('Exit App',style: TextStyle(color: Colors.white,fontSize: 20),))
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Text(
                      enteredText,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: const Color(0xff292D36),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText = enteredText.substring(
                                    0, enteredText.length - 1);
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              'AC',
                              style: TextStyle(
                                color: Color(0xff26F4CE),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (i == 1) {
                                operator = '-';
                                i++;
                                setState(() {
                                  enteredText += '-';
                                });
                              } else if (i == 2) {
                                operator = '+';
                                i--;
                                setState(() {
                                  enteredText += '+';
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '+/_',
                              style: TextStyle(
                                color: Color(0xff26F4CE),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              operator = '%';
                              setState(() {
                                enteredText += '%';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '%',
                              style: TextStyle(
                                color: Color(0xff26F4CE),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              operator = '/';
                              setState(() {
                                enteredText += '/';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '/',
                              style: TextStyle(
                                color: Color(0xffD76061),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '7';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '7',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '8';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '8',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '9';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '9',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              operator = '*';
                              setState(() {
                                enteredText += '*';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '*',
                              style: TextStyle(
                                color: Color(0xffD76061),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '4';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '4',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '5';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '5',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '6';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '6',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              operator = '-';
                              setState(() {
                                enteredText += '-';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '-',
                              style: TextStyle(
                                color: Color(0xffD76061),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '1';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '1',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '2';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '2',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '3';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '3',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              operator = '+';
                              setState(() {
                                enteredText += '+';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '+',
                              style: TextStyle(
                                color: Color(0xffD76061),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText = '';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Icon(Icons.refresh),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '0';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '0',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                enteredText += '.';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '.',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              List myList = enteredText.split(operator);
                              double number1 = double.parse(myList[0]);
                              double number2 = double.parse(myList[1]);
                              //print(number1);
                              //print(number2);
                              //print(operator);
                              switch (operator) {
                                case '+':
                                  {
                                    result = number1 + number2;
                                    break;
                                  }
                                case '-':
                                  {
                                    result = number1 - number2;
                                    break;
                                  }
                                case '*':
                                  {
                                    result = number1 * number2;
                                    break;
                                  }
                                case '/':
                                  {
                                    result = number1 / number2;
                                    break;
                                  }
                                case '%':
                                  {
                                    result = number1 % number2;
                                    break;
                                  }
                              }
                              setState(() {
                                enteredText = result.toString();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff272B33),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text(
                              '=',
                              style: TextStyle(
                                color: Color(0xffD76061),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
            Expanded(child: Center(
              child: GestureDetector(
                onTap: (){
                  if(enteredText.isNotEmpty){
                    Navigator.pop(context,enteredText);
                  }
                  else{
                    Navigator.pop(context,'');
                  }
                },
                child: Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Colors.amber,
                    )
                  ),
                  child: const Center(child: Text('Navigate Back',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),

                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
