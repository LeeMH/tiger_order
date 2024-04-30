// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuGroup _$MenuGroupFromJson(Map<String, dynamic> json) => MenuGroup(
      id: json['id'] as int,
      name: (json['name'] as List<dynamic>)
          .map((e) => LangAndValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String,
      fontSize: json['fontSize'] as int,
    );

Map<String, dynamic> _$MenuGroupToJson(MenuGroup instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'fontSize': instance.fontSize,
    };
