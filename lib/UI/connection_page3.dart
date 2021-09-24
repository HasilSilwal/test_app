import 'package:flutter/material.dart';
import 'package:test_app/constants/constants.dart';

class ConnectionPage3 extends StatefulWidget {
  const ConnectionPage3({Key? key}) : super(key: key);

  @override
  _ConnectionPage3State createState() => _ConnectionPage3State();
}

class _ConnectionPage3State extends State<ConnectionPage3> {
  bool step1 = false;
  bool step2 = false;

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
                    onTap: () {
                      Navigator.pop(context);
                    },
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
                    'Set up : 3/3',
                    style: kHeading2Style,
                  ),
                  step1 == true
                      ? GestureDetector(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)  => ConnectionPage2()));
                          },
                          child: Row(
                            children: [
                              Text(
                                'Finish',
                                style: TextStyle(color: AppColors.buttonColor),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: AppColors.buttonColor,
                              ),
                            ],
                          ),
                        )
                      : Text('               '),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: step2 == true
                    ? Widget3()
                    : step1 == false
                        ? Widget1()
                        : Widget2(),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Has your baby been \n born already?',
          style: kHeadingTextStyle,
          textAlign: TextAlign.center,
        ),
        Column(
          children: [
            Image(
              image: AssetImage('assets/images/baby.png'),
            ),
            Text('Hello There!'),
          ],
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  step1 = true;
                });
              },
              child: Container(
                height: 40,
                width: double.infinity,
                child: Center(
                    child: Text(
                  'Yes',
                  style: TextStyle(color: Colors.white),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.buttonColor,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: double.infinity,
                child: Center(
                    child: Text(
                  'No',
                  style: TextStyle(color: AppColors.buttonColor),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: AppColors.buttonColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget2() {
    return Column(
      children: [
        Text(
          'Name for the set of sensors',
          style: kHeadingTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                    'There can be several sets of sensors. Please add a name for this set ot sensors so that you can easilt identify it for  the future settings.'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Set\'s of sensors name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "1hb32h34",
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      step2 = true;
                    });
                  },
                  child: Text('Step3-2')),
            ],
          ),
        ),
      ],
    );
  }

  Widget3() {
    return Column(
      children: [
        Text(
          'Add baby\'s info',
          style: kHeadingTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                    'Tell us about your baby, so we can determine relevant heart Tate and O2 ranges and produce smarter insights.'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "1hb32h34",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Birth date',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Enter baby's birth date",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      'Gender',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
