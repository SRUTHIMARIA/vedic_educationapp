import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedic_flutter_app/resource/route.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String radioButtonItem = 'ONE';

  int id = 1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(63, 89, 91, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: height * 0.03),
                  child: Text(
                    'Vedic',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: 'Lobster'),
                  ),
                ),
              ),
              Text(
                'Educational Hub',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'AvenirLight',
                    letterSpacing: 10),
              ),
            ],
          ),
          SizedBox(height: height * 0.06),
          Expanded(
            child: Container(
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: height * 0.02),
                        child: Image.asset('assets/images/profile_image.png')),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.03, vertical: height * 0.006),
                        margin: EdgeInsets.symmetric(vertical: height * 0.02),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color.fromRGBO(244, 244, 244, 1)),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          'Upload Profile Photo',
                          style:
                              TextStyle(color: Color.fromRGBO(111, 112, 113, 1)),
                        )),
                    Column(
                      children: [
                        SizedBox(
                          height: height * .017,
                        ),
                        buildFirstName(context),
                        SizedBox(
                          height: height * .018,
                        ),
                        buildLastname(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildFatherName(context),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        buildMotherName(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildGender(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildMobileNumber(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildEmail(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildAddress(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildState(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildDistrict(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildPincode(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildGradeStudent(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildMedium(context),
                        SizedBox(
                          height: height * .05,
                        ),
                        buildUpdateButton(context),
                        SizedBox(
                          height: height * .05,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildFirstName(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('First name',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildLastname(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('Last name',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              style: TextStyle(
                color: Colors.black54,
              ),
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildFatherName(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('Father’s name',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildMotherName(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('Mother’s name',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildGender(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: height * 0.024),
        child: Text('Gender',
            style: TextStyle(
                fontFamily: 'AvenirBook',
                color: Color.fromRGBO(63, 89, 91, 1),
                fontSize: height * 0.015)),
      ),
      SizedBox(
        height: height * .008,
      ),
      Radio(
        activeColor: Colors.black,
        value: 1,
        groupValue: id,
        onChanged: (val) {
          setState(() {
            radioButtonItem = 'ONE';
            id = 1;
          });
        },
      ),
      Text('Male',
          style: TextStyle(
              fontFamily: 'AvenirBook',
              color: Color.fromRGBO(111, 112, 113, 1),
              fontSize: height * 0.015)),
      Radio(
        activeColor: Colors.black,
        value: 2,
        groupValue: id,
        onChanged: (val) {
          setState(() {
            radioButtonItem = 'TWO';
            id = 2;
          });
        },
      ),
      Text('Female',
          style: TextStyle(
              fontFamily: 'AvenirBook',
              color: Color.fromRGBO(111, 112, 113, 1),
              fontSize: height * 0.015)),
    ]);
  }

  Widget buildMobileNumber(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('Mobile number',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildEmail(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('Email address',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildAddress(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('Address line 1',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildState(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('State',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildDistrict(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('District',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildPincode(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('pin Code',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildGradeStudent(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('Grade in which student is studying',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildMedium(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.024),
          child: Text('Medium of instruction',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontSize: height * 0.015)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.024),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color.fromRGBO(210, 217, 215, 1).withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * .005),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildUpdateButton(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Get.toNamed(homeRoute);
      },
      child: Container(
        height: height * .047,
        width: width * 0.3,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 178, 90, 1),
            borderRadius: BorderRadius.circular(height * .002),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(255, 178, 90, 0.35),
                  blurRadius: height * .006,
                  offset: Offset(0, 3))
            ]),
        child: Center(
            child: Text(
          'UPDATE',
          style: TextStyle(
              fontFamily: 'AvenirMedium',
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: height * 0.011),
        )),
      ),
    );
  }
}
