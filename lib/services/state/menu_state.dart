import 'package:get/get.dart';
import 'package:tiger_order/models/menu.dart';

class MenuState extends GetxController {
  static MenuState get to => Get.find();

  final menu = RxList<Menu>(<Menu>[]);

  final selectedMenu = RxList<Menu>(<Menu>[]);

  void setMenu(List<Menu> newMenu) {
    menu.clear();
    menu.addAll(newMenu);
    update();
  }

  void changeSelectedMenu(int groupId) {
    selectedMenu.clear();
    selectedMenu.addAll(menu.where((m) => m.groupId == groupId).toList());

    print("gropuID = $groupId");
    print("${selectedMenu.length} / ${menu.length}");
    update();
  }
}
