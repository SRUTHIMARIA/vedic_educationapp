import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vedic_flutter_app/controller/home_controller.dart';
import 'package:vedic_flutter_app/resource/route.dart';

class HomeScreen extends StatelessWidget {
  final homePageController = Get.put(HomePageController());
  var colors = [
    Color.fromRGBO(255, 178, 90, 1),
    Color.fromRGBO(127, 176, 65, 1),
    Color.fromRGBO(63, 89, 91, 1),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1.225;
    double width = MediaQuery.of(context).size.width;


    return Scaffold(
        backgroundColor: Color.fromRGBO(63, 89, 91, 1),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: GestureDetector(
                          onTap: (){
                            Get.toNamed(profileRoute);
                          },
                          child: Icon(
                            Icons.person_pin,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      )),
                      SizedBox(
                        width: width * .32,
                      ),
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
                    ],
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
              Expanded(child: GetX<HomePageController>(builder: (controller) {
                return Container(

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  child: ListView.builder(
                    itemExtent: 180.0,
                    itemCount: controller.homeData.length,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 18),
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(40.0),
                        color: colors[index],
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: height * 0.04,
                                    vertical: height * 0.006),
                                child: Text(
                                  controller.homeData[index].header,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontFamily: 'AvenirMedium'),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: height * 0.04,
                                        vertical: height * 0.01),
                                    child: SvgPicture.asset(
                                        controller.homeData[index].image),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: height * 0.014,
                                        vertical: height * 0.01),
                                    child: Text(
                                      controller.homeData[index].body,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontFamily: 'AvenirLight'),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ),
                  ),
                );
                //   Container(
                //   color: Colors.white,
                //   child: ListView.builder(
                //       physics: NeverScrollableScrollPhysics(),
                //       shrinkWrap: true,
                //       itemCount: controller.homeData.length,
                //       // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       //     crossAxisCount: 2,
                //       //     childAspectRatio: width / (height * .35)),
                //       itemBuilder: (context, index) {
                //         return Container(
                //           padding: EdgeInsets.only(
                //               left: width * .05, right: width * .05),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               SizedBox(
                //                 height: height * .03,
                //               ),
                //               Text(
                //                 controller.homeData[index].header,
                //                 style: TextStyle(color: Colors.black),
                //               ),
                //               SizedBox(
                //                 height: height * .05,
                //               ),
                //               Row(
                //                 mainAxisAlignment: MainAxisAlignment.end,
                //                 children: [
                //                   Text(
                //                     controller.homeData[index].body,
                //                     style: TextStyle(color: Colors.black),
                //                   ),
                //                 ],
                //               )
                //             ],
                //           ),
                //           decoration: BoxDecoration(
                //               image: DecorationImage(
                //                   image: AssetImage(
                //                     controller.homeData[index].image,
                //                   ),
                //                   fit: BoxFit.fill)),
                //         );
                //       }),
                // );
              }))
            ]));
  }
}
