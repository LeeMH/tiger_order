// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Menu _$MenuFromJson(Map<String, dynamic> json) => Menu(
      id: json['id'] as int,
      groupId: json['groupId'] as int,
      name: (json['name'] as List<dynamic>)
          .map((e) => LangAndValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      shortDesc: json['shortDesc'] as String,
      fullDesc: json['fullDesc'] as String,
      price: json['price'] as int,
      options: (json['options'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'id': instance.id,
      'groupId': instance.groupId,
      'name': instance.name,
      'imageUrls': instance.imageUrls,
      'shortDesc': instance.shortDesc,
      'fullDesc': instance.fullDesc,
      'price': instance.price,
      'options': instance.options,
    };
