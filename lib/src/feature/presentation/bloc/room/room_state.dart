part of 'room_bloc.dart';

@immutable
sealed class RoomBlocState {}

final class RoomBlocInitialState extends RoomBlocState {}

final class RoomBlocLoadingState extends RoomBlocState {}

final class RoomBlocLoadedState extends RoomBlocState {
  final RoomEntity loaded;

  RoomBlocLoadedState({required this.loaded});
}

final class RoomBlocErrorState extends RoomBlocState {
  final String errorMessage;

  RoomBlocErrorState({required this.errorMessage});
}
