import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:vedic_flutter_app/controller/login_controller.dart';
import 'package:vedic_flutter_app/resource/route.dart';
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isRememberMe = false;
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPassWord = TextEditingController();

  final formkey = GlobalKey<FormState>();
  Box? box1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createBox();
  }

  void createBox() async {
    box1 = await Hive.openBox('logindata');
    getdata();
  }

  void getdata() async {
    if (box1?.get('controllerName') != null) {
      controllerName.text=box1?.get('controllerName');
    }
    if (box1?.get('controllerPassWord') != null) {
      controllerPassWord.text=box1?.get('controllerPassWord');
    }
  }

  @override
  Widget build(BuildContext context) {
    Color colorGreen = Color.fromRGBO(84, 212, 148, 1);
    Color colorTeal = Color.fromRGBO(3, 179, 167, 1);

    double height = MediaQuery.of(context).size.height * 1.222;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromRGBO(63, 89, 91, 1),
        resizeToAvoidBottomInset: true,
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('load_json/logindata.json'),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  var data = jsonDecode(snapshot.data.toString());
                  return Container(
                    height: height * .6,
                    width: width * .75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.04),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Container(
                            width: width * 0.6,
                            height: 140,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(210, 217, 215, 1)
                                    .withOpacity(.5)),
                            child: Center(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Center(
                                  child: Text(
                                    'Vedic',
                                    style: TextStyle(
                                        color: Color.fromRGBO(107, 135, 70, 1),
                                        fontSize: 40,
                                        fontFamily: 'Lobster'),
                                  ),
                                ),
                                Text(
                                  'Educational Hub',
                                  style: TextStyle(
                                      color: Color.fromRGBO(107, 135, 70, 1),
                                      fontSize: 14,
                                      fontFamily: 'AvenirLight',
                                      letterSpacing: 2),
                                ),
                              ],
                            )),
                          ),
                        ),
                        const Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'AvenirMedium',
                              fontSize: 17,
                              color: Color.fromRGBO(63, 89, 91, 1)),
                        ),
                        SizedBox(
                          height: height * .017,
                        ),
                        buildEmail(context),
                        SizedBox(
                          height: height * .018,
                        ),
                        buildPassword(context),
                        SizedBox(
                          height: height * .02,
                        ),
                        buildRemember(context),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        buildLoginbtn(formkey),
                        SizedBox(
                          height: height * .018,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }

  Widget buildEmail(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.017),
          child: Text('Username',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(111, 112, 113, 1),
                  fontSize: height * 0.013)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.017),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: controllerName,
              validator: (value) =>
                  Get.put(LoginController()).isUser(controllerName.text),
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

  Widget buildPassword(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: height * 0.017),
          child: Text('Password',
              style: TextStyle(
                  fontFamily: 'AvenirBook',
                  color: Color.fromRGBO(111, 112, 113, 1),
                  fontSize: height * 0.013)),
        ),
        SizedBox(
          height: height * .008,
        ),
        Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: height * 0.017),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              validator: (value) => Get.find<LoginController>()
                  .isPassword(controllerPassWord.text),
              keyboardType: TextInputType.visiblePassword,
              controller: controllerPassWord,
              obscureText: true,
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

  Widget buildRemember(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        children: [
          Container(
              height: height * 0.014,
              width: width * 0.038,
              color: Colors.white,
              margin: EdgeInsets.only(left: height * 0.017),
              child: Theme(
                data: ThemeData(
                    unselectedWidgetColor:
                        Color.fromRGBO(194, 194, 194, 1).withOpacity(0.50)),
                child: Checkbox(
                  value: _isRememberMe,
                  checkColor: Colors.teal,
                  activeColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      _isRememberMe = value!;
                    });
                  },
                ),
              )),
          SizedBox(
            width: width * 0.02,
          ),
          Center(
            child: Text(
              'Remember me',
              style: TextStyle(
                  color: Color.fromRGBO(63, 89, 91, 1),
                  fontFamily: "AvenirMedium",
                  fontSize: height * 0.010),
            ),
          ),
          SizedBox(width: width * 0.1),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: height * 0.02),
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                fontFamily: 'AvenirMedium',
                fontSize: height * 0.014,
                color: Color.fromRGBO(255, 178, 90, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLoginbtn(key) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        login();
        if (key.currentState.validate()) {
          Get.toNamed(homeRoute);
        }
      },
      child: Container(
        height: height * .037,
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
          'LOGIN',
          style: TextStyle(
              fontFamily: 'AvenirMedium',
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: height * 0.016),
        )),
      ),
    );
  }

  void login() {
    if (_isRememberMe) {
      box1?.put('controllerName', controllerName.text);
      box1?.put('controllerPassWord', controllerPassWord.text);
    }
  }
}
