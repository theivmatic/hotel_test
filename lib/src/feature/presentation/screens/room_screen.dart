import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test/src/core/routes/app_router.gr.dart';
import 'package:hotel_test/src/feature/presentation/bloc/room/room_bloc.dart';
import 'package:hotel_test/src/feature/presentation/widgets/image_carousel_widget.dart';

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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.popRoute(const HotelRoute());
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(''),
      ),
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      body: BlocBuilder<RoomBloc, RoomBlocState>(
          bloc: roomBloc,
          builder: (context, state) => switch (state) {
                RoomBlocLoadedState() => ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            const ImageCarouselWidget(imageUrlOne: ''),
                            Text(state.loaded.rooms!.roomsList!.name.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                RoomBlocLoadingState() => const SizedBox(),
                RoomBlocErrorState() => const SizedBox(),
                _ => const Placeholder(),
              }),
    );
  }
}
