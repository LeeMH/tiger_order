import 'package:get/get.dart';

class ConfigState extends GetxController {
  static ConfigState get to => Get.find();

  // 메뉴 그룹 스타일
  RxString groupStyle = "".obs;

  void setGroupStyle(String value) {
    groupStyle(value);
    update();
  }
}
