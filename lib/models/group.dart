import 'package:json_annotation/json_annotation.dart';
import 'package:tiger_order/models/lang_and_value.dart';

part 'group.g.dart';

@JsonSerializable()
class Group {
  final int id;
  final List<LangAndValue> name;
  final String imageUrl;
  final int fontSize;

  Group({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.fontSize,
  });

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
  Map<String, dynamic> toJson() => _$GroupToJson(this);
}
