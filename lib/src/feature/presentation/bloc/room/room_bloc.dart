import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test/src/feature/domain/models/room/room.dart';
import 'package:meta/meta.dart';

part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomBlocState> {
  RoomBloc() : super(RoomInitialBlocState()) {
    on<RoomEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
