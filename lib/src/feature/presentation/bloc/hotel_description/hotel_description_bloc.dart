import 'package:bloc/bloc.dart';
import 'package:hotel_test/src/feature/domain/models/hotel_description.dart';
import 'package:meta/meta.dart';

part 'hotel_description_event.dart';
part 'hotel_description_state.dart';

class HotelDescriptionBloc extends Bloc<HotelDescriptionEvent, HotelDescriptionState> {
  HotelDescriptionBloc() : super(HotelDescriptionInitialState()) {
    on<HotelDescriptionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
