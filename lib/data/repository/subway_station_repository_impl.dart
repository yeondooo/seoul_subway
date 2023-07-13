import 'package:seoul_subway/data/data_source/station_api.dart';
import 'package:seoul_subway/data/mapper/station_mapper.dart';
import 'package:seoul_subway/domain/model/station.dart';
import 'package:seoul_subway/domain/repository/station_respository.dart';

class SubwayStationRepositoryImpl implements StationRepository {
  final _api = StationApi();

  @override
  Future<List<Station>> getArrivalInfo(String query) async {
    final resultDto = await _api.getStationInfo(query);

    return resultDto.realtimeArrivalList.map((e) => e.toStation()).toList();
  }
}
