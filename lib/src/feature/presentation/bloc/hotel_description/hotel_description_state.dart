part of 'hotel_description_bloc.dart';

@immutable
sealed class HotelDescriptionBlocState {}

final class HotelDescriptionInitialState extends HotelDescriptionBlocState {}

final class HotelDescriptionLoadingState extends HotelDescriptionBlocState {}

final class HotelDescriptionLoadedState extends HotelDescriptionBlocState {
  final HotelDescriptionEntity loaded;

  HotelDescriptionLoadedState({required this.loaded});
}

final class HotelDescriptionErrorState extends HotelDescriptionBlocState {
  final String errorMessage;

  HotelDescriptionErrorState({required this.errorMessage});
}
