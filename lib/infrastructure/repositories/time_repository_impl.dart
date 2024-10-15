import 'package:flutter_application_1/domain/datasources/time_datasources.dart';
import 'package:flutter_application_1/domain/entities/info_fecha.dart';
import 'package:flutter_application_1/domain/repositories/time_repository.dart';

class TimeRepositoryImpl implements TimeRepository{
 final TimeDatasourcesInterface timeDatasourcesInterface;

  TimeRepositoryImpl({required this.timeDatasourcesInterface});
  @override
  Future<List<InfoFecha>> getTimeZoneList() {
    return timeDatasourcesInterface.getTimeZoneList();
  }

}