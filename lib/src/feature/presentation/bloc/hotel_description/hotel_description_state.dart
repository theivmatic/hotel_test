part of 'hotel_description_bloc.dart';

@immutable
sealed class HotelDescriptionState {}

final class HotelDescriptionInitialState extends HotelDescriptionState {}

final class HotelDescriptionLoadingState extends HotelDescriptionState {}

final class HotelDescriptionLoadedState extends HotelDescriptionState {}

final class HotelDescriptionErrorState extends HotelDescriptionState {}
