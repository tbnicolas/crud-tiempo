import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/entities/info_fecha.dart';
import 'package:flutter_application_1/domain/repositories/time_repository.dart';
import 'package:flutter_application_1/presentation/bloc/timeCrudBloc/time_crud_bloc.dart';
import 'package:flutter_application_1/shared/data/current_time_zone.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'time_bloc_event.dart';
part 'time_bloc_state.dart';

class TimeBlocBloc extends Bloc<TimeBlocEvent, TimeBlocState> {
  final TimeRepository timeRepository; 
  final TimeCrudBloc timeCrudBloc;
  
  TimeBlocBloc({required this.timeRepository, required this.timeCrudBloc}) : super(const TimeBlocState()) {
    on<GetTimeList>(_onGetTimeZoneList);
  }

  Future<void> _onGetTimeZoneList(GetTimeList event, Emitter<TimeBlocState> emit) async {
    final List<InfoFecha> timeZoneList = await timeRepository.getTimeZoneList();
    await _addCurrentTimeZone(timeZoneList);
    emit(state.copyWith(infoFechaList: [...timeZoneList]));
  }

  Future<void> _addCurrentTimeZone(List<InfoFecha> timeZoneList) async {
    String currentTimeZone = await CurrentTimeZone().getCurrentTimeZone();

    if (timeZoneList.any((infoFecha) => infoFecha.timezone == currentTimeZone)) {
      InfoFecha currentInfoFecha = timeZoneList.firstWhere(
        (infoFecha) => infoFecha.timezone == currentTimeZone,
      );
      timeCrudBloc.add(AddTimeFromList(currentInfoFecha));
    }

  }

   
}
