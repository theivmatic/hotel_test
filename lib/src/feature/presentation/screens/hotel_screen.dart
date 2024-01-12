import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test/src/feature/presentation/bloc/hotel_description/hotel_description_bloc.dart';
import 'package:hotel_test/src/feature/presentation/widgets/hotel_adress_widget.dart';
import 'package:hotel_test/src/feature/presentation/widgets/hotel_description_button_widget.dart';
import 'package:hotel_test/src/feature/presentation/widgets/hotel_name_widget.dart';
import 'package:hotel_test/src/feature/presentation/widgets/hotel_peculiarities_widget.dart';
import 'package:hotel_test/src/feature/presentation/widgets/hotel_price_widget.dart';
import 'package:hotel_test/src/feature/presentation/widgets/hotel_rating_widget.dart';
import 'package:hotel_test/src/feature/presentation/widgets/image_carousel_widget.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  late HotelDescriptionBloc hotelDescriptionBloc;

  @override
  void initState() {
    hotelDescriptionBloc = context.read<HotelDescriptionBloc>()
      ..add(FetchHotelDescriptionBlocEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Отель',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   centerTitle: true,
      // ),
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      body: BlocBuilder<HotelDescriptionBloc, HotelDescriptionBlocState>(
        bloc: hotelDescriptionBloc,
        builder: (context, state) => switch (state) {
          HotelDescriptionBlocLoadedState() => ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 530,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SafeArea(
                        child: Text(
                          'Отель',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      //карусель
                      const ImageCarouselWiidget(
                          // imageUrlOne: state.loaded.imageUrls![0],
                          // imageUrlTwo: state.loaded.imageUrls![1],
                          // imageUrlThree: state.loaded.imageUrls![2],
                          ),
                      //рейтинг
                      const SizedBox(height: 20),
                      HotelRatingWidget(
                        hotelRating: state.loaded.rating!,
                        hotelRatingName: state.loaded.ratingName!,
                      ),
                      const SizedBox(height: 20),
                      //название
                      HotelNameWidget(
                        hotelName: state.loaded.name!,
                      ),
                      //adress
                      HotelAdressWidget(
                        hotelAdress: state.loaded.adress!,
                      ),
                      //стоимость
                      HotelPriceWidget(
                        minialPrice: state.loaded.minimalPrice!,
                        priceForIt: state.loaded.priceForIt!.toLowerCase(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 530,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Об отеле',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      HotelPeculiaritiesWidget(
                        peculiarities:
                            state.loaded.aboutTheHotel!.peculiarities,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        state.loaded.aboutTheHotel!.description!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 0, 0, 0.9)
                        ),
                      ),
                      HotelDescriptionButtonWidget(buttonIcon: AssetImage('assets/icons/emoji-happy.png'), buttonText: 'Удобства', buttonSubText: 'Самое необходимое',),
                    ],
                  ),
                ),
              ],
            ),
          HotelDescriptionBlocLoadingState() => const SizedBox(),
          HotelDescriptionBlocErrorState() => const SizedBox(),
          _ => const Placeholder(),
        },
      ),
    );
  }
}
