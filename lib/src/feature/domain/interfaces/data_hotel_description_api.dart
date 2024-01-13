import 'package:hotel_test/src/feature/domain/models/hotel_description/hotel_description.dart';

abstract class IDataHotelDescriptionApi {
  Future<HotelDescriptionEntity> fetchHotelDescription();
}