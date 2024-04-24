import 'package:json_annotation/json_annotation.dart';
import 'package:tiger_order/models/lang_and_value.dart';

part 'menu_group.g.dart';

@JsonSerializable()
class MenuGroup {
  final int id;
  final List<LangAndValue> name;
  final String imageUrl;
  final int fontSize;

  MenuGroup({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.fontSize,
  });

  factory MenuGroup.fromJson(Map<String, dynamic> json) =>
      _$MenuGroupFromJson(json);
  Map<String, dynamic> toJson() => _$MenuGroupToJson(this);
}
