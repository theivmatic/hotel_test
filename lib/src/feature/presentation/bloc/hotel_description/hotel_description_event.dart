part of 'hotel_description_bloc.dart';

@immutable
sealed class HotelDescriptionBlocEvent {}

class FetchHotelDescriptionBlocEvent implements HotelDescriptionBlocEvent {}
