// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomEntity _$RoomEntityFromJson(Map<String, dynamic> json) => RoomEntity(
      rooms: json['rooms'] == null
          ? null
          : RoomList.fromJson(json['rooms'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoomEntityToJson(RoomEntity instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
    };

RoomList _$RoomListFromJson(Map<String, dynamic> json) => RoomList(
      roomsList: json['roomsList'] == null
          ? null
          : Room.fromJson(json['roomsList'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoomListToJson(RoomList instance) => <String, dynamic>{
      'roomsList': instance.roomsList,
    };

Room _$RoomFromJson(Map<String, dynamic> json) => Room(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      pricePer: json['price_per'] as String?,
      peculiarities: (json['peculiarities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageUrls: (json['image_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RoomToJson(Room instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'price_per': instance.pricePer,
      'peculiarities': instance.peculiarities,
      'image_urls': instance.imageUrls,
    };
