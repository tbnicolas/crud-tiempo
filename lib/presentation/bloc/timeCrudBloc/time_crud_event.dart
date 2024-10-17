part of 'time_crud_bloc.dart';

sealed class TimeCrudEvent extends Equatable {
  const TimeCrudEvent();

  @override
  List<Object> get props => [];
}


class RemoveTimeFromList extends TimeCrudEvent{
  final InfoFecha infoFecha;

  const RemoveTimeFromList(this.infoFecha);
}
class AddTimeFromList extends TimeCrudEvent{
  final InfoFecha infoFecha;

  const AddTimeFromList(this.infoFecha);
}
