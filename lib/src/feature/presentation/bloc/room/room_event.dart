part of 'room_bloc.dart';

@immutable
sealed class RoomBlocEvent {}

class FetchRoomBlocEvent implements RoomBlocEvent {}
