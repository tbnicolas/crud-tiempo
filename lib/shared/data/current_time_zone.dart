import 'package:flutter_timezone/flutter_timezone.dart';

class CurrentTimeZone{
  Future<String> getCurrentTimeZone() async {
    return await FlutterTimezone.getLocalTimezone();
  }
}
