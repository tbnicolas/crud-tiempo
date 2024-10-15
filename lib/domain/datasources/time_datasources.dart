import 'package:flutter_application_1/domain/entities/info_fecha.dart';

abstract class TimeDatasourcesInterface {
  Future<List<InfoFecha>> getTimeZoneList();
}