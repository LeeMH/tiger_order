import 'package:get/get.dart';

class MerchatState extends GetxController {
  static MerchatState get to => Get.find();

  // 메뉴 그룹 스타일
  RxInt merchatId = (-1).obs;

  void setMerchatId(int value) {
    merchatId(value);
    update();
  }
}
