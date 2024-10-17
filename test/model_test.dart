import 'package:flutter_application_1/infrastructure/models/time_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([TimeModel])
void main() {
 test('validateInfoFecha',(){

  Map<String,dynamic> json = {
    'timezone': 'Africa/Abidjan',
    'detail': {
      'datetime': '2024-10-16T02:13:29.859612+00:00',
      'dayOfWeek': 3,
      'dayOfYear': 3,
      'weekNumber': 42,
      'abbreviation': 'GMT',
      'unixtime': 1729044809
    }
    
  };
  final response = TimeModel.fromJson(json);
  expect(response, isA<TimeModel>());
  expect(response, isNot(isA<String>()));
  expect(response, isNot(isA<DetailModel>()));


 });
}