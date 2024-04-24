import 'package:json_annotation/json_annotation.dart';
import 'package:tiger_order/models/lang_and_value.dart';

part 'menu.g.dart';

@JsonSerializable()
class Menu {
  final int id;
  final int groupId;
  final List<LangAndValue> name;
  final List<String> imageUrls;
  final String shortDesc;
  final String fullDesc;
  final int price;
  final List<int> options;

  Menu({
    required this.id,
    required this.groupId,
    required this.name,
    required this.imageUrls,
    required this.shortDesc,
    required this.fullDesc,
    required this.price,
    required this.options,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
  Map<String, dynamic> toJson() => _$MenuToJson(this);
}
