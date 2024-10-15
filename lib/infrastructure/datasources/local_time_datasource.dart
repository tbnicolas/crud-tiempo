import 'package:flutter_application_1/domain/datasources/time_datasources.dart';
import 'package:flutter_application_1/domain/entities/info_fecha.dart';
import 'package:flutter_application_1/infrastructure/models/time_model.dart';
import 'package:flutter_application_1/shared/data/local_time.dart';

class LocalTimeDatasource implements TimeDatasourcesInterface{
  @override
  Future<List<InfoFecha>> getTimeZoneList() async{
    await Future.delayed(const Duration(seconds: 2));
    final List<InfoFecha> timeListResponse = timeList.map(
      (time)=> TimeModel.fromJson(time).toInfoFechaEntity()
    ).toList();
    return timeListResponse;
  }


}