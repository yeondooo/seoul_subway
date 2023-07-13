import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seoul_subway/data/repository/subway_station_repository_impl.dart';
import 'package:seoul_subway/presentation/main/main_screen.dart';
import 'package:seoul_subway/presentation/main/main_view_model.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(
            SubwayStationRepositoryImpl(),
          ),
          child: const MainScreen(),
        );
      },
    ),
  ],
);
