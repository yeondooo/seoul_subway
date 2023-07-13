import 'package:seoul_subway/core/result.dart';
import 'package:seoul_subway/domain/model/station.dart';
import 'package:seoul_subway/domain/repository/station_respository.dart';

class GetStationInfoUseCase {
  final StationRepository _stationRepository;

  GetStationInfoUseCase(this._stationRepository);

  Future<Result<List<Station>>> execute(String query) async {
    try {
      final stations = await _stationRepository.getArrivalInfo(query);
      return Result.success(stations.toList());
    } catch (err) {
      return const Result.error('에러가 발생했습니다.');
    }
  }
}
