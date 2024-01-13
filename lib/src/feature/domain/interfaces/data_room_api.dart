import 'package:hotel_test/src/feature/domain/models/room/room.dart';

abstract class IDataRoomApi {
  Future<RoomEntity> fetchRoom();
}
