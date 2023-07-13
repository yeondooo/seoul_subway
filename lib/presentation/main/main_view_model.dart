import 'package:flutter/material.dart';
import 'package:seoul_subway/core/result.dart';
import 'package:seoul_subway/domain/use_case/get_station_info_use_case.dart';
import 'package:seoul_subway/presentation/main/main_state.dart';

class MainViewModel with ChangeNotifier {
  final GetStationInfoUseCase _getStationInfoUseCase;

  MainViewModel(this._getStationInfoUseCase);

  MainState _state = const MainState();

  MainState get state => _state;

  void fetchStationInfo(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getStationInfoUseCase.execute(query);

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(
          stations: data,
          isLoading: false,
        );
      case Error(:final e):
        _state = state.copyWith(isLoading: false);
    }
    notifyListeners();
  }
}
