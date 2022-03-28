import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vedic_flutter_app/model/homedata_model.dart';
import 'package:vedic_flutter_app/utils/utilsDc.dart';

class HomePageController extends GetxController {
  RxList<HomeDataModel> homeData = [
    HomeDataModel(
        color: Color.fromRGBO(255, 178, 90, 1),
        image: notes,
        header: "Notes",
        body: "Lorem ipsum dolor sit amet,\n consetetur sadipscing elitr, sed"),
    HomeDataModel(
        color: Color.fromRGBO(255, 178, 90, 1),
        image: audio,
        header: "Audio",
        body: "Lorem ipsum dolor sit amet,\n consetetur sadipscing elitr, sed"),
    HomeDataModel(
        color: Color.fromRGBO(255, 178, 90, 1),
        image: video,
        header: "Video",
        body: "Lorem ipsum dolor sit amet,\n consetetur sadipscing elitr, sed"),
  ].obs;
}
