import 'package:dio/dio.dart';
import 'package:flutter_application_1/domain/datasources/time_datasources.dart';
import 'package:flutter_application_1/domain/entities/info_fecha.dart';
import 'package:flutter_application_1/infrastructure/models/time_model.dart';

class ExternalApiDatasource extends TimeDatasourcesInterface{
  final _dio = Dio();
  
  @override
  Future<List<InfoFecha>> getTimeZoneList() async {
    final response = await _dio.get('https://fierce-journey-53566-55de4c09a9c7.herokuapp.com/zonas_horarias');
    
    if (response.statusCode == 200 && response.data is List) {
      final List<InfoFecha> timeListResponse = (response.data as List)
          .map((json) => TimeModel.fromJson(json).toInfoFechaEntity())
          .toList();
      return timeListResponse;
    } else {
      throw Exception('Error en la estructura de la respuesta o código de estado inesperado.');
    }

  }

}