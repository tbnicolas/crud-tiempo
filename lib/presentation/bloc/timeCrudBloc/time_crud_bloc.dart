
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/entities/info_fecha.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'time_crud_event.dart';
part 'time_crud_state.dart';

class TimeCrudBloc extends Bloc<TimeCrudEvent, TimeCrudState> {
  TimeCrudBloc() : super(const TimeCrudState()) {
    on<AddTimeFromList>(_onAddTimeZoneList);
    on<RemoveTimeFromList>(_onRemoveTimeZoneList);

  }


  void _onAddTimeZoneList(AddTimeFromList event, Emitter<TimeCrudState> emit) {
  bool exists = state.infoFechaList.any(
    (infoFecha) => infoFecha.timezone == event.infoFecha.timezone,
  );

  if (!exists) {
    emit(
      state.copyWith(
        infoFechaList: [...state.infoFechaList, event.infoFecha], 
      ),
    );
  }
}


void _onRemoveTimeZoneList(RemoveTimeFromList event, Emitter<TimeCrudState> emit) {
  final updatedList = state.infoFechaList.where(
    (infoFecha) => infoFecha.timezone != event.infoFecha.timezone,
  ).toList();

  emit(
    state.copyWith(
      infoFechaList: [...updatedList],
    ),
  );
}


}
