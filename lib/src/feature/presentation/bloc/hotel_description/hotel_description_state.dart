part of 'hotel_description_bloc.dart';

@immutable
sealed class HotelDescriptionState {}

final class HotelDescriptionInitialState extends HotelDescriptionState {}

final class HotelDescriptionLoadingState extends HotelDescriptionState {}

final class HotelDescriptionLoadedState extends HotelDescriptionState {
  final HotelDescriptionEntity loaded;

  HotelDescriptionLoadedState({required this.loaded});
}

final class HotelDescriptionErrorState extends HotelDescriptionState {
  final String errorMessage;

  HotelDescriptionErrorState({required this.errorMessage});
}
