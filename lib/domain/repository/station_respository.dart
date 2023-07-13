import 'package:seoul_subway/domain/model/station.dart';

abstract interface class StationRepository {
  Future<List<Station>> getArrivalInfo(String query);
}
