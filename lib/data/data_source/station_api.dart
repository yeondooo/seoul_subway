import 'dart:convert';

import 'package:seoul_subway/data/dto/station_result_dto.dart';
import 'package:http/http.dart' as http;

class StationApi {
  Future<StationResultDto> getStationInfo(String query) async {
    final url =
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/$query';
    final http.Response response = await http.get(Uri.parse(url));

    Map<String, dynamic> jsonString = jsonDecode(response.body);
    return StationResultDto.fromJson(jsonString);
  }
}
