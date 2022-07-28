import 'package:flutter/material.dart';
import 'package:flutter_numpad/flutter_numpad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Numpad Package',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Numpad Package'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController testController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Numpadd(               
                hanTextController: testController,
                onSecodActionButtonPressed: (value) {
                  print(value);
                },
              ),
               Numpadd(
                titleText: "Pay",
                subTitleText: "",
                buttonBackgroundColor: Colors.white,
                elevation: 0,
                hanTextController: testController,
                textInputLenght: 10,
                onSecodActionButtonPressed: (value) {
                  print(value);
                },
              ),
               Numpadd(
                titleText: "",
                backgroundColor: Colors.yellow,
                subTitleText: "",
                showActionButton: false,
                buttonBackgroundColor: Colors.white,
                elevation: 10,
                hanTextController: testController,
                textInputLenght: 10,
                onSecodActionButtonPressed: (value) {
                  print(value);
                },
              ),
               Numpadd(
                borderRaduis: 0,
                titleText: "Pay",
                subTitleText: "",
                buttonBackgroundColor: Colors.white,
                elevation: 0,
                hanTextController: testController,
                textInputLenght: 10,
                onSecodActionButtonPressed: (value) {
                  print(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
