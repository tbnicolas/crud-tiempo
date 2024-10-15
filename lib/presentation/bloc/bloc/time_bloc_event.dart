part of 'time_bloc_bloc.dart';

sealed class TimeBlocEvent extends Equatable {
  const TimeBlocEvent();

  @override
  List<Object> get props => [];
}

class GetTimeList extends TimeBlocEvent {}

class RemoveTimeFromList extends TimeBlocEvent{
  final String timezone;

  const RemoveTimeFromList(this.timezone);
}
