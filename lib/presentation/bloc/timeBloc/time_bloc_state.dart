part of 'time_bloc_bloc.dart';

class TimeBlocState {
 final List<InfoFecha> infoFechaList;
 final bool isLoading;

  const TimeBlocState({this.infoFechaList = const [], this.isLoading = true});
   
   TimeBlocState copyWith({
     List<InfoFecha> ? infoFechaList,
     bool  isLoading = false
   }) => TimeBlocState(
    infoFechaList: infoFechaList ?? this.infoFechaList,
    isLoading: isLoading
   );


}

