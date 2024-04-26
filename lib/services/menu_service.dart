import 'dart:ffi';

import 'package:tiger_order/services/repository/menu_repository.dart';
import 'package:tiger_order/services/state/menu_state.dart';

class MenuService {
  final MenuRepository _repository = MenuRepository();

  Future<void> loadMenu(int merchantId, int branchId) async {
    var menu = await _repository.getMenu(merchantId, branchId);
    MenuState.to.setMenu(menu);
  }
}
