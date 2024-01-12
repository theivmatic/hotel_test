import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test/src/feature/presentation/bloc/hotel_description/hotel_description_bloc.dart';
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
      appBar: AppBar(
        title: const Text(
          'Отель',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      body: BlocBuilder<HotelDescriptionBloc, HotelDescriptionBlocState>(
        bloc: hotelDescriptionBloc,
        builder: (context, state) => switch (state) {
          HotelDescriptionBlocLoadedState() =>
          Column(
            children: [
              //карусель
              ImageCarouselWiidget(imageUrlOne: state.loaded.imageUrls![0], imageUrlTwo: state.loaded.imageUrls![1], imageUrlThree: state.loaded.imageUrls![2],),
              //рейтинг
              const HotelRatingWidget(),
              //название
              //стоимость
            ],
          ),
          HotelDescriptionBlocLoadingState() => const SizedBox(),
          HotelDescriptionBlocErrorState() => const SizedBox(),
          _  => const Placeholder(),
        },
      ),
    );
  }
}


