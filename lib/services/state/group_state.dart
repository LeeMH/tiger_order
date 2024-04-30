import 'package:get/get.dart';
import 'package:tiger_order/models/group.dart';

class GroupState extends GetxController {
  static GroupState get to => Get.find();

  final groups = RxList<Group>(<Group>[]);
  final selected = 0.obs;

  void clear() {
    groups.clear();
    update();
  }

  void updateGroups(List<Group> values) {
    groups.clear();
    groups.addAll(values);
    update();
  }

  void updateSelected(int value) {
    selected(value);
    update();
  }
}
