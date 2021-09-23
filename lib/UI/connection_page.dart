import 'package:flutter/material.dart';
import 'package:test_app/constants/constants.dart';

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({Key? key}) : super(key: key);

  @override
  _ConnectionPageState createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                'Set up : 2/3',
                style: kHeading2Style,
              ),
              SizedBox(height: 20,),
              Text(
                'Connect sensors',
                style: kHeadingTextStyle,
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        '1. Press the "Bluetooth" button on the base station to enter pairing mode.'),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: new TextSpan(
                          style: new TextStyle(
                              // fontSize: 17,
                              color: Colors.black),
                          children: [
                            TextSpan(
                                text:
                                    "2. Press the \"Bluetooth\" button on sensors "),
                            TextSpan(
                              text: "of the same set ",
                              style: TextStyle(color: AppColors.buttonColor),
                            ),
                            TextSpan(text: "to enter pairing mode."),
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('3 Select sensors and connect to them.'),
                    SizedBox(
                      height: 10,
                    ),
                  //   ListView.builder(
                  //   itemCount: 1,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return ListTile(leading: Icon(Icons.bluetooth),);
                  //   }, 
                  // ),
                  Card(child: ListTile(leading: Icon(Icons.bluetooth),title: Text('Arm sensor unit 1hb32h34'),)),
                  SizedBox(height: 10,),
                  Text('4. Select the data you want to receive in the application.'),
                  Card(child: ListTile(leading: Icon(Icons.bluetooth),title: Text('Sound'),)),
                  Card(child: ListTile(leading: Switch(onChanged: (value){}, value: false,),title: Text('Heart rate'),)),
                  Card(child: ListTile(leading: Icon(Icons.bluetooth),title: Text('SpO2'),)),
                  Card(child: ListTile(leading: Icon(Icons.bluetooth),title: Text('baby temperature'),)),
                  Card(child: ListTile(leading: Icon(Icons.bluetooth),title: Text('Room temperature'),)),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
