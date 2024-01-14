import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test/src/core/routes/app_router.gr.dart';
import 'package:hotel_test/src/feature/presentation/bloc/room/room_bloc.dart';
import 'package:hotel_test/src/feature/presentation/widgets/hotel_peculiarities_widget.dart';
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
                            Text(
                                state.loaded.rooms!.roomsList!.name.toString()),
                            HotelPeculiaritiesWidget(
                                peculiarities: state
                                    .loaded.rooms!.roomsList!.peculiarities),
                            TextButton(
                              onPressed: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(13, 114, 255, 0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Row(
                                  children: [
                                    Text(
                                      'Подробнее о номере',
                                      style: TextStyle(
                                        color: Color.fromRGBO(13, 114, 255, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'SF-Pro-Display',
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color.fromRGBO(13, 114, 255, 1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // FilledButton(
                            //   onPressed: () {},
                            //   style: const ButtonStyle(
                            //     backgroundColor: MaterialStatePropertyAll(
                            //       Color.fromRGBO(13, 114, 255, 0.1),
                            //     ),
                            //   ),
                            //   child: const Row(
                            //     children: [
                            //       Text(
                            //         'Подробнее о номере',
                            //         style: TextStyle(
                            //           color: Color.fromRGBO(13, 114, 255, 1),
                            //           fontSize: 16,
                            //           fontWeight: FontWeight.w500,
                            //           fontFamily: 'SF-Pro-Display',
                            //         ),
                            //       ),
                            //       Icon(
                            //         Icons.arrow_forward_ios,
                            //         color: Color.fromRGBO(13, 114, 255, 1),
                            //       ),
                            //     ],
                            //   ),
                            // ),
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
