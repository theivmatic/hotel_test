import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test/src/feature/data/implementations/data_room_api_impl.dart';
import 'package:hotel_test/src/feature/domain/models/room/room.dart';
import 'package:meta/meta.dart';

part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomBlocEvent, RoomBlocState> {
  RoomBloc() : super(RoomBlocInitialState()) {
    on<RoomBlocEvent>((event, emit) async {
      try {
        final loaded = await DataRoomApiImpl().fetchRoom();
        emit(RoomBlocLoadedState(loaded: loaded));
      } catch (e) {
        emit(RoomBlocErrorState(errorMessage: e.toString()));
      }
    });
  }
}
