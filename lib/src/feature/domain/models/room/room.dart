import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'room.g.dart';

RoomEntity hotelDescriptionEntityFromJson(List<int> body) =>
    RoomEntity.fromJson(json.decode(utf8.decode(body)));


@JsonSerializable()
class RoomEntity {
  final List<Room>? rooms;

  RoomEntity({required this.rooms});

  factory RoomEntity.fromJson(Map<String, dynamic> json) =>
      _$RoomEntityFromJson(json);
}

@JsonSerializable()
class Room {
  final int? id;
  final String? name;
  final int? price;
  @JsonKey(name: 'price_per')
  final String? pricePer;
  final List<String>? peculiarities;
  @JsonKey(name: 'image_urls')
  final List<String>? imageUrls;

  Room(
      {required this.id,
      required this.name,
      required this.price,
      required this.pricePer,
      required this.peculiarities,
      required this.imageUrls});

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
