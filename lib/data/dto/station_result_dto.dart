class StationResultDto {
  StationResultDto({
    required this.errorMessage,
    required this.realtimeArrivalList,
  });

  late final ErrorMessage errorMessage;
  late final List<RealtimeArrivalList> realtimeArrivalList;

  StationResultDto.fromJson(Map<String, dynamic> json) {
    errorMessage = ErrorMessage.fromJson(json['errorMessage']);
    realtimeArrivalList = List.from(json['realtimeArrivalList'])
        .map((e) => RealtimeArrivalList.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['errorMessage'] = errorMessage.toJson();
    _data['realtimeArrivalList'] =
        realtimeArrivalList.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ErrorMessage {
  ErrorMessage({
    required this.status,
    required this.code,
    required this.message,
    required this.link,
    required this.developerMessage,
    required this.total,
  });

  late final int status;
  late final String code;
  late final String message;
  late final String link;
  late final String developerMessage;
  late final int total;

  ErrorMessage.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    link = json['link'];
    developerMessage = json['developerMessage'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['code'] = code;
    _data['message'] = message;
    _data['link'] = link;
    _data['developerMessage'] = developerMessage;
    _data['total'] = total;
    return _data;
  }
}

class RealtimeArrivalList {
  RealtimeArrivalList({
    this.beginRow,
    this.endRow,
    this.curPage,
    this.pageRow,
    required this.totalCount,
    required this.rowNum,
    required this.selectedCount,
    required this.subwayId,
    this.subwayNm,
    required this.updnLine,
    required this.trainLineNm,
    this.subwayHeading,
    required this.statnFid,
    required this.statnTid,
    required this.statnId,
    required this.statnNm,
    this.trainCo,
    required this.trnsitCo,
    required this.ordkey,
    required this.subwayList,
    required this.statnList,
    required this.btrainSttus,
    required this.barvlDt,
    required this.btrainNo,
    required this.bstatnId,
    required this.bstatnNm,
    required this.recptnDt,
    required this.arvlMsg2,
    required this.arvlMsg3,
    required this.arvlCd,
  });

  late final Null beginRow;
  late final Null endRow;
  late final Null curPage;
  late final Null pageRow;
  late final int totalCount;
  late final int rowNum;
  late final int selectedCount;
  late final String subwayId;
  late final Null subwayNm;
  late final String updnLine;
  late final String trainLineNm;
  late final Null subwayHeading;
  late final String statnFid;
  late final String statnTid;
  late final String statnId;
  late final String statnNm;
  late final Null trainCo;
  late final String trnsitCo;
  late final String ordkey;
  late final String subwayList;
  late final String statnList;
  late final String btrainSttus;
  late final String barvlDt;
  late final String btrainNo;
  late final String bstatnId;
  late final String bstatnNm;
  late final String recptnDt;
  late final String arvlMsg2;
  late final String arvlMsg3;
  late final String arvlCd;

  RealtimeArrivalList.fromJson(Map<String, dynamic> json) {
    beginRow = null;
    endRow = null;
    curPage = null;
    pageRow = null;
    totalCount = json['totalCount'];
    rowNum = json['rowNum'];
    selectedCount = json['selectedCount'];
    subwayId = json['subwayId'];
    subwayNm = null;
    updnLine = json['updnLine'];
    trainLineNm = json['trainLineNm'];
    subwayHeading = null;
    statnFid = json['statnFid'];
    statnTid = json['statnTid'];
    statnId = json['statnId'];
    statnNm = json['statnNm'];
    trainCo = null;
    trnsitCo = json['trnsitCo'];
    ordkey = json['ordkey'];
    subwayList = json['subwayList'];
    statnList = json['statnList'];
    btrainSttus = json['btrainSttus'];
    barvlDt = json['barvlDt'];
    btrainNo = json['btrainNo'];
    bstatnId = json['bstatnId'];
    bstatnNm = json['bstatnNm'];
    recptnDt = json['recptnDt'];
    arvlMsg2 = json['arvlMsg2'];
    arvlMsg3 = json['arvlMsg3'];
    arvlCd = json['arvlCd'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['beginRow'] = beginRow;
    _data['endRow'] = endRow;
    _data['curPage'] = curPage;
    _data['pageRow'] = pageRow;
    _data['totalCount'] = totalCount;
    _data['rowNum'] = rowNum;
    _data['selectedCount'] = selectedCount;
    _data['subwayId'] = subwayId;
    _data['subwayNm'] = subwayNm;
    _data['updnLine'] = updnLine;
    _data['trainLineNm'] = trainLineNm;
    _data['subwayHeading'] = subwayHeading;
    _data['statnFid'] = statnFid;
    _data['statnTid'] = statnTid;
    _data['statnId'] = statnId;
    _data['statnNm'] = statnNm;
    _data['trainCo'] = trainCo;
    _data['trnsitCo'] = trnsitCo;
    _data['ordkey'] = ordkey;
    _data['subwayList'] = subwayList;
    _data['statnList'] = statnList;
    _data['btrainSttus'] = btrainSttus;
    _data['barvlDt'] = barvlDt;
    _data['btrainNo'] = btrainNo;
    _data['bstatnId'] = bstatnId;
    _data['bstatnNm'] = bstatnNm;
    _data['recptnDt'] = recptnDt;
    _data['arvlMsg2'] = arvlMsg2;
    _data['arvlMsg3'] = arvlMsg3;
    _data['arvlCd'] = arvlCd;
    return _data;
  }
}
