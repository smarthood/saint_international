import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: verify(),
    );
  }
}

class verify extends StatefulWidget {
  @override
  State<verify> createState() => _verifyState();
}

class _verifyState extends State<verify> {
  TextEditingController parenticnoController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 10),
            child: Image.asset(
              "../assets/logo.png",
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: TextField(
              controller: parenticnoController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xff043E6C),
                    width: 3,
                  ),
                ),
                labelText: 'Parent IC NO',
                prefixIcon: Icon(
                  Icons.person_pin_rounded,
                  color: Color.fromARGB(221, 4, 61, 108),
                ),
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(28, 0, 0, 0),
                  blurRadius: 10,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xff043E6C),
                    width: 3,
                  ),
                ),
                labelText: 'Name',
                prefixIcon: Icon(
                  Icons.quick_contacts_dialer,
                  color: Color.fromARGB(221, 4, 61, 108),
                ),
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(28, 0, 0, 0),
                  blurRadius: 10,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Already verified ? Login here",
                  style: TextStyle(color: Colors.blue),
                )),
          ),
          Container(
              height: 50,
              margin: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff043E6C),
                  onPrimary: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(100, 40), //////// HERE
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  child: const Text('verify'),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Image.asset(
                        "../assets/logo.png",
                        height: 80,
                      ),
                      content: Text('Verification complete successfully'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => Register())));
                          },
                          child: Center(child: Text('OK')),
                        ),
                      ],
                    ),
                  );
                },
              )),
        ],
      ),
    ));
  }
}
