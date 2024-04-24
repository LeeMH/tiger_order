import 'package:json_annotation/json_annotation.dart';

part 'lang_and_value.g.dart';

@JsonSerializable()
class LangAndValue {
  final String lang;
  final String value;

  LangAndValue({
    required this.lang,
    required this.value,
  });

  factory LangAndValue.fromJson(Map<String, dynamic> json) =>
      _$LangAndValueFromJson(json);
  Map<String, dynamic> toJson() => _$LangAndValueToJson(this);
}
