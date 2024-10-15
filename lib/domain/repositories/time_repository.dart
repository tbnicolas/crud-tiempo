import 'package:flutter_application_1/domain/entities/info_fecha.dart';

abstract class TimeRepository {
  Future<List<InfoFecha>> getTimeZoneList();
}