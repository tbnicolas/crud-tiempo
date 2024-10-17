part of 'time_crud_bloc.dart';

 class TimeCrudState  {
   final List<InfoFecha> infoFechaList;
   final bool isLoading;

  const TimeCrudState({this.infoFechaList = const [], this.isLoading = true});
   
   TimeCrudState copyWith({
     List<InfoFecha> ? infoFechaList,
     bool  isLoading = false
   }) => TimeCrudState(
    infoFechaList: infoFechaList ?? this.infoFechaList,
    isLoading: isLoading
   );

}

