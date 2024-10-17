part of 'time_bloc_bloc.dart';

sealed class TimeBlocEvent extends Equatable {
  const TimeBlocEvent();

  @override
  List<Object> get props => [];
}

class GetTimeList extends TimeBlocEvent {}


// class RemoveTimeFromList extends TimeBlocEvent{
//   final InfoFecha infoFecha;

//   const RemoveTimeFromList(this.infoFecha);
// }
// class AddTimeFromList extends TimeBlocEvent{
//   final InfoFecha infoFecha;

//   const AddTimeFromList(this.infoFecha);
// }
