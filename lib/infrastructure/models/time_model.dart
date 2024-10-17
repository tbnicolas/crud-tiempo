import 'dart:convert';

import 'package:flutter_application_1/domain/entities/info_detail.dart';
import 'package:flutter_application_1/domain/entities/info_fecha.dart';
import 'package:intl/intl.dart';

List<TimeModel> infoFechaModelFromJson(String str) => List<TimeModel>.from(json.decode(str).map((x) => TimeModel.fromJson(x)));

String infoFechaModelToJson(List<TimeModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TimeModel {
    final String timezone;
    final DetailModel detail;

    TimeModel({
        required this.timezone,
        required this.detail,
    });

    factory TimeModel.fromJson(Map<String, dynamic> json) => TimeModel(
        timezone: json["timezone"],
        detail: DetailModel.fromJson(json["detail"]),
    );

    Map<String, dynamic> toJson() => {
        "timezone": timezone,
        "detail": detail.toJson(),
    };

   InfoFecha toInfoFechaEntity() => InfoFecha(
    timezone: timezone,
    detail: detail.toDetailEntity()
   );
}

class DetailModel {
    final DateTime datetime;
    final int dayOfWeek;
    final int dayOfYear;
    final int weekNumber;
    final String abbreviation;
    final int unixtime;

    DetailModel({
        required this.datetime,
        required this.dayOfWeek,
        required this.dayOfYear,
        required this.weekNumber,
        required this.abbreviation,
        required this.unixtime,
    });

    factory DetailModel.fromJson(Map<String, dynamic> json) {
      String trimmedDateTimeString = json["datetime"].split('.').first;
      return DetailModel(
        datetime: DateTime.parse(trimmedDateTimeString),
        dayOfWeek: json["dayOfWeek"],
        dayOfYear: json["dayOfYear"],
        weekNumber: json["weekNumber"],
        abbreviation: json["abbreviation"],
        unixtime: json["unixtime"],
      );
    }

    Map<String, dynamic> toJson() => {
        "datetime": datetime.toIso8601String(),
        "dayOfWeek": dayOfWeek,
        "dayOfYear": dayOfYear,
        "weekNumber": weekNumber,
        "abbreviation": abbreviation,
        "unixtime": unixtime,
    };

    InfoDetail toDetailEntity() {
    return InfoDetail(
      datetime: datetime,
      dayOfWeek: dayOfWeek,
      dayOfYear: dayOfYear,
      weekNumber: weekNumber,
      abbreviation: abbreviation,
      unixtime: unixtime,
    );
  }
}
