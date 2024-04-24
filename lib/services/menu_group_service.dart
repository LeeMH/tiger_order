import 'package:tiger_order/services/repository/menu_group_repository.dart';
import 'package:tiger_order/services/state/menu_group_state.dart';

class MenuGroupService {
  final MenuGroupRepository _repository = MenuGroupRepository();

  Future<void> loadMenuGroups(int merchantId, int branchId) async {
    var menuGroups = await _repository.getMenuGroups(merchantId, branchId);

    MenuGroupState.to.setMenuGroups(menuGroups);
  }
}
