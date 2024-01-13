part of 'room_bloc.dart';

@immutable
sealed class RoomBlocState {}

final class RoomInitialBlocState extends RoomBlocState {}

final class RoomLoadingBlocState extends RoomBlocState {}

final class RoomLoadedBlocState extends RoomBlocState {
  final RoomEntity loaded;

  RoomLoadedBlocState({required this.loaded});
}

final class RoomErrorBlocState extends RoomBlocState {
  final String errorMessage;

  RoomErrorBlocState({required this.errorMessage});
}
