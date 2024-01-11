import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'hotel_description.g.dart';

HotelDescriptionEntity hotelDescriptionEntityFromJson(String jsonString) =>
    HotelDescriptionEntity.fromJson(json.decode(jsonString).map((e) => HotelDescriptionEntity.fromJson(e)));

@JsonSerializable()
class HotelDescriptionEntity {
  final int? id;
  final String? name;
  final String? adress;
  @JsonKey(name: 'minimal_price')
  final int? minimalPrice;
  @JsonKey(name: 'price_for_it')
  final String? priceForIt;
  final double? rating;
  @JsonKey(name: 'rating_name')
  final String? ratingName;
  @JsonKey(name: 'image_urls')
  final List<String>? imageUrls;
  @JsonKey(name: 'about_the_hotel')
  final AboutTheHotel? aboutTheHotel;

  HotelDescriptionEntity(
      {required this.id,
      required this.name,
      required this.adress,
      required this.minimalPrice,
      required this.priceForIt,
      required this.rating,
      required this.ratingName,
      required this.imageUrls,
      required this.aboutTheHotel});

  factory HotelDescriptionEntity.fromJson(Map<String, dynamic> json) =>
      _$HotelDescriptionEntityFromJson(json);
}

@JsonSerializable()
class AboutTheHotel {
  final String? description;
  final List<String>? peculiarities;

  AboutTheHotel({required this.description, required this.peculiarities});

  factory AboutTheHotel.fromJson(Map<String, dynamic> json) =>
      _$AboutTheHotelFromJson(json);
}
