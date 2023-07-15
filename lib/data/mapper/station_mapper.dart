import 'package:seoul_subway/data/dto/station_result_dto.dart';
import 'package:seoul_subway/domain/model/station.dart';

extension ToStation on RealtimeArrivalList {
  Station toStation() {
    return Station(
      updnLine: updnLine ?? '데이터가 없습니다.',
      trainLineNm: trainLineNm ?? '데이터가 없습니다.',
      statnNm: statnNm ?? '데이터가 없습니다.',
      bstatnNm: bstatnNm ?? '데이터가 없습니다.',
      arvlMsg2: arvlMsg2 ?? '데이터가 없습니다.',
      arvlMsg3: arvlMsg3 ?? '데이터가 없습니다.',
      arvlCd: arvlCd ?? '데이터가 없습니다.',
      btrainSttus: btrainSttus ?? '데이터가 없습니다.',
      barvlDt: barvlDt ?? '데이터가 없습니다.',
    );
  }
}
