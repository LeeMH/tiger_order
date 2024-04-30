import 'package:json_annotation/json_annotation.dart';
import 'package:tiger_order/models/lang_and_value.dart';

part 'option.g.dart';

@JsonSerializable()
class Option {
  final int id;
  final List<LangAndValue> name;
  final bool mandatory;
  final String priceType; //ADD, REPLACE
  final Choice choice;
  final List<Item> items;

  Option({
    required this.id,
    required this.name,
    required this.mandatory,
    required this.priceType,
    required this.choice,
    required this.items,
  });

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
  Map<String, dynamic> toJson() => _$OptionToJson(this);
}

@JsonSerializable()
class Choice {
  final String type;
  final int min;
  final int max;

  Choice({
    required this.type,
    required this.min,
    required this.max,
  });

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
  Map<String, dynamic> toJson() => _$ChoiceToJson(this);
}

@JsonSerializable()
class Item {
  final int id;
  final List<LangAndValue> name;
  final int price;
  final bool defaultChoice;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.defaultChoice,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
