import 'package:get/get.dart';
import 'package:tiger_order/models/menu_group.dart';

class MenuGroupState extends GetxController {
  static MenuGroupState get to => Get.find();

  final menuGroup = RxList<MenuGroup>(<MenuGroup>[]);

  void clear() {
    menuGroup.clear();
  }

  void setMenuGroups(List<MenuGroup> menuGroups) {
    menuGroup.clear();
    menuGroup.addAll(menuGroups);
  }
}
