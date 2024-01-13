import 'package:json_annotation/json_annotation.dart';

class RoomEntity {
  final List<Room> rooms;

  RoomEntity({required this.rooms});
}

class Room {
  final int id;
  final String name;
  final int price;
  @JsonKey(name: 'price_per')
  final String pricePer;
  final List<String> peculiarities;
  @JsonKey(name: 'image_urls')
  final List<String> imageUrls;

  Room(
      {required this.id,
      required this.name,
      required this.price,
      required this.pricePer,
      required this.peculiarities,
      required this.imageUrls});
}
