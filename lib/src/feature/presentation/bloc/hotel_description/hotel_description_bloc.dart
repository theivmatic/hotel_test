import 'package:bloc/bloc.dart';
import 'package:hotel_test/src/feature/data/implementations/data_hotel_description_api_impl.dart';
import 'package:hotel_test/src/feature/domain/models/hotel_description.dart';
import 'package:meta/meta.dart';

part 'hotel_description_event.dart';
part 'hotel_description_state.dart';

class HotelDescriptionBloc
    extends Bloc<HotelDescriptionBlocEvent, HotelDescriptionBlocState> {
  HotelDescriptionBloc() : super(HotelDescriptionBlocInitialState()) {
    on<HotelDescriptionBlocEvent>((event, emit) async {
      try {
        final loaded =
            await DataHotelDescriptionApiImpl().fetchHotelDescription();
        emit(HotelDescriptionBlocLoadedState(loaded: loaded));
      } catch (e) {
        emit(HotelDescriptionBlocErrorState(errorMessage: e.toString()));
      }
    });
  }
}
