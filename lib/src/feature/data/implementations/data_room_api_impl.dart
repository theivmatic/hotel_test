import 'package:hotel_test/src/feature/domain/interfaces/data_room_api.dart';
import 'package:hotel_test/src/feature/domain/models/room/room.dart';
import 'package:http/http.dart' as http;

class DataRoomApiImpl implements IDataRoomApi {
  final http.Client? _client;

  DataRoomApiImpl({http.Client? client}) : _client = client ?? http.Client();

  @override
  Future<RoomEntity> fetchRoom() async {
    final responce = await _client!.get(
      Uri.parse('https://run.mocky.io/v3/8b532701-709e-4194-a41c-1a903af00195'),
      headers: {'ContentType': 'applications/json'},
    );
    if (responce.statusCode == 200) {
      return roomEntityFromJson(responce.bodyBytes);
    } else {
      throw Exception(
          'Status Code: ${responce.statusCode}, Message: ${responce.reasonPhrase}');
    }
  }
}
