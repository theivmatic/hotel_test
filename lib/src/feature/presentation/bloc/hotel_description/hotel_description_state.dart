part of 'hotel_description_bloc.dart';

@immutable
sealed class HotelDescriptionBlocState {}

final class HotelDescriptionBlocInitialState extends HotelDescriptionBlocState {}

final class HotelDescriptionBlocLoadingState extends HotelDescriptionBlocState {}

final class HotelDescriptionBlocLoadedState extends HotelDescriptionBlocState {
  final HotelDescriptionEntity loaded;

  HotelDescriptionBlocLoadedState({required this.loaded});
}

final class HotelDescriptionBlocErrorState extends HotelDescriptionBlocState {
  final String errorMessage;

  HotelDescriptionBlocErrorState({required this.errorMessage});
}
