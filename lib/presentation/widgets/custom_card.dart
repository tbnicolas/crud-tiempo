import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/info_fecha.dart';
import 'package:flutter_application_1/presentation/bloc/timeCrudBloc/time_crud_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';


class CustomCard extends StatelessWidget {
  final InfoFecha infoFecha;
  const CustomCard({super.key, required this.infoFecha});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(infoFecha.timezone),
      subtitle: Text(DateFormat('yyyy-dd-MM hh:mm a').format(infoFecha.detail.datetime)),
      trailing: IconButton(
        onPressed: () {
           context.read<TimeCrudBloc>().add(RemoveTimeFromList(infoFecha));
        },
        icon: const Icon(Icons.remove)
      ) ,
    );
  }
}