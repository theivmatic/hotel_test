import 'package:hotel_test/src/feature/domain/interfaces/data_hotel_description_api.dart';
import 'package:hotel_test/src/feature/domain/models/hotel_description/hotel_description.dart';
import 'package:http/http.dart' as http;

class DataHotelDescriptionApiImpl implements IDataHotelDescriptionApi {
  final http.Client? _client;

  DataHotelDescriptionApiImpl({http.Client? client})
      : _client = client ?? http.Client();

  @override
  Future<HotelDescriptionEntity> fetchHotelDescription() async {
    final responce = await _client!.get(
      Uri.parse('https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473'),
      headers: {'ContentType': 'applications/json'},
    );
    if (responce.statusCode == 200) {
      return hotelDescriptionEntityFromJson(responce.bodyBytes);
    } else {
      throw Exception(
          'Status Code: ${responce.statusCode}, Message: ${responce.reasonPhrase}');
    }
  }
}
