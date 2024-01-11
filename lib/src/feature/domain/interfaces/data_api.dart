import 'package:hotel_test/src/feature/domain/models/hotel_description.dart';

abstract class IDataApi {
  Future<HotelDescriptionEntity> fetchHotelDescription();
}