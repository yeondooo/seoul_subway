import 'package:flutter/material.dart';
import 'package:seoul_subway/domain/repository/station_respository.dart';
import 'package:seoul_subway/presentation/main/main_state.dart';

class MainViewModel with ChangeNotifier {
  final StationRepository _stationRepository;

  MainViewModel(this._stationRepository);

  MainState _state = const MainState();

  MainState get state => _state;

  void fetchStationInfo(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      stations: await _stationRepository.getArrivalInfo(query),
      isLoading: false,
    );
    notifyListeners();
  }
}
