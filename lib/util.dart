import 'package:intl/intl.dart';

class Util {
  static String formatNumber(dynamic value) {
    if (num is String) {
      if (value.isNotEmpty) {
        final number = int.parse(value);
        final formatter = NumberFormat('#,###');
        return formatter.format(number);
      } else {
        return "";
      }
    } else if (num is int) {
      final formatter = NumberFormat('#,###');
      return formatter.format(value);
    } else {
      return "";
    }
  }
}
