// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      id: json['id'] as int,
      name: (json['name'] as List<dynamic>)
          .map((e) => LangAndValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      mandatory: json['mandatory'] as bool,
      priceType: json['priceType'] as String,
      choice: Choice.fromJson(json['choice'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mandatory': instance.mandatory,
      'priceType': instance.priceType,
      'choice': instance.choice,
      'items': instance.items,
    };

Choice _$ChoiceFromJson(Map<String, dynamic> json) => Choice(
      type: json['type'] as String,
      min: json['min'] as int,
      max: json['max'] as int,
    );

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
      'type': instance.type,
      'min': instance.min,
      'max': instance.max,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as int,
      name: (json['name'] as List<dynamic>)
          .map((e) => LangAndValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as int,
      defaultChoice: json['defaultChoice'] as bool,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'defaultChoice': instance.defaultChoice,
    };
