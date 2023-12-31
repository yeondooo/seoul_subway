import 'package:json_annotation/json_annotation.dart';

part 'station.g.dart';

@JsonSerializable(explicitToJson: true)
class Station {
  final String updnLine;
  final String trainLineNm;
  final String statnNm;
  final String bstatnNm;
  final String arvlMsg2;
  final String arvlMsg3;
  final String arvlCd;
  final String btrainSttus;
  final String barvlDt;

  Station({
    required this.updnLine,
    required this.trainLineNm,
    required this.statnNm,
    required this.bstatnNm,
    required this.arvlMsg2,
    required this.arvlMsg3,
    required this.arvlCd,
    required this.btrainSttus,
    required this.barvlDt,
  });

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);

  Map<String, dynamic> toJson() => _$StationToJson(this);
}
