import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test/src/core/routes/app_router.dart';
import 'package:hotel_test/src/feature/presentation/bloc/hotel_description/hotel_description_bloc.dart';
import 'package:hotel_test/src/feature/presentation/bloc/observer.dart';
import 'package:hotel_test/src/feature/presentation/bloc/room/room_bloc.dart';

void main() {
  Bloc.observer = AppObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HotelDescriptionBloc(),
        ),
        BlocProvider(
          create: (context) => RoomBloc(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            elevation: 0,
          ),
        ),
        routerConfig: AppRouter().config(),
      ),
    );
  }
}
