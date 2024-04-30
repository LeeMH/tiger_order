import 'package:get/get.dart';
import 'package:tiger_order/models/menu_group.dart';
import 'package:tiger_order/services/state/menu_state.dart';

class MenuGroupState extends GetxController {
  static MenuGroupState get to => Get.find();

  final menuGroup = RxList<MenuGroup>(<MenuGroup>[]);
  final selected = (1).obs;

  void clear() {
    menuGroup.clear();
    update();
  }

  void setMenuGroups(List<MenuGroup> menuGroups) {
    menuGroup.clear();
    menuGroup.addAll(menuGroups);
    update();
  }

  void setSelected(int value) {
    selected(value);
    update();
  }
}
