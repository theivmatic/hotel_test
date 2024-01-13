import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test/src/feature/presentation/bloc/room/room_bloc.dart';

@RoutePage()
class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  late RoomBloc roomBloc;

  @override
  void initState() {
    roomBloc = context.read<RoomBloc>()..add(FetchRoomBlocEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RoomBloc, RoomBlocState>(
        bloc: roomBloc,
        builder: (context, state) => switch (state) {
          RoomBlocLoadedState => const SizedBox(),
          RoomBlocLoadingState => const SizedBox(),
          RoomBlocErrorState => const SizedBox(),
          _ => const Placeholder(),
        }
        ),
    );
  }
}
