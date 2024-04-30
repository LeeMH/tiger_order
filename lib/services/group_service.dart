import 'package:tiger_order/services/repository/group_repository.dart';
import 'package:tiger_order/services/state/group_state.dart';

class GroupService {
  final GroupRepository _repository = GroupRepository();

  Future<void> loadMenuGroups(int merchantId, int branchId) async {
    var groups = await _repository.getGroups(merchantId, branchId);

    GroupState.to.updateGroups(groups);
  }
}
