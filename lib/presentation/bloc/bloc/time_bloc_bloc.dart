import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/entities/info_fecha.dart';
import 'package:flutter_application_1/domain/repositories/time_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'time_bloc_event.dart';
part 'time_bloc_state.dart';

class TimeBlocBloc extends Bloc<TimeBlocEvent, TimeBlocState> {
  final TimeRepository timeRepository;

  TimeBlocBloc({required this.timeRepository}) : super(const TimeBlocState()) {
    on<GetTimeList>(_onGetTimeZoneList);
  }

  Future<void> _onGetTimeZoneList(GetTimeList event,Emitter<TimeBlocState> emit) async {
    final List<InfoFecha> timeZoneList = await timeRepository.getTimeZoneList();
    emit(state.copyWith(
      infoFechaList: [...timeZoneList]
    ));
  }
}
