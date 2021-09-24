import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/UI/ui.dart';
import 'package:test_app/constants/app_colors.dart';
import 'package:test_app/constants/constants.dart';

class ConnectionPage2 extends StatefulWidget {
  const ConnectionPage2({Key? key}) : super(key: key);

  @override
  _ConnectionPageState createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage2> {
  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;
  bool switch4 = false;
  bool switch5 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey,
                        ),
                        Text(
                          'Back',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Set up : 2/3',
                    style: kHeading2Style,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          // CupertinoPageRoute(
                              builder: (context) => ConnectionPage3()));
                    },
                    child: Row(
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(color: AppColors.buttonColor),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColors.buttonColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Connect sensors',
                style: kHeadingTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
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
                    Card(
                        child: ListTile(
                      leading: Icon(Icons.bluetooth),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Arm sensor unit 1hb32h34'),
                          CupertinoActivityIndicator(),
                          // Icon(Icons.check),
                        ],
                      ),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        '4. Select the data you want to receive in the application.'),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.bluetooth),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sound'),
                            Switch(
                              onChanged: (value) {
                                setState(() {
                                  switch1 = value;
                                });
                              },
                              value: switch1,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                        child: ListTile(
                      leading: Icon(Icons.bluetooth),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Heart rate'),
                          Switch(
                            onChanged: (value) {
                              setState(() {
                                switch2 = value;
                              });
                            },
                            value: switch2,
                          )
                        ],
                      ),
                    )),
                    Card(
                        child: ListTile(
                      leading: Icon(Icons.bluetooth),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SpO2'),
                          Switch(
                            onChanged: (value) {
                              setState(() {
                                switch3 = value;
                              });
                            },
                            value: switch3,
                          )
                        ],
                      ),
                    )),
                    Card(
                        child: ListTile(
                      leading: Icon(Icons.bluetooth),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Baby temperature'),
                          Switch(
                            onChanged: (value) {
                              setState(() {
                                switch4 = value;
                              });
                            },
                            value: switch4,
                          )
                        ],
                      ),
                    )),
                    Card(
                        child: ListTile(
                      leading: Icon(Icons.bluetooth),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Room temprature'),
                          Switch(
                            onChanged: (value) {
                              setState(() {
                                switch5 = value;
                              });
                            },
                            value: switch5,
                          )
                        ],
                      ),
                    )),
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
