import 'dart:convert';

import 'package:flutter_application_1/domain/entities/info_fecha.dart';

List<TimeModel> timeModelFromJson(String str) => List<TimeModel>.from(json.decode(str).map((x) => TimeModel.fromJson(x)));

class TimeModel {
    final String timezone;
    final String fecha;

    TimeModel({
        required this.timezone,
        required this.fecha,
    });

    factory TimeModel.fromJson(Map<String, dynamic> json) => TimeModel(
        timezone: json["timezone"],
        fecha: json["fecha"],
    );

    InfoFecha toInfoFechaEntity() => InfoFecha(
      timezone: timezone, 
      fecha: fecha
    );
}
