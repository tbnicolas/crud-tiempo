import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/info_fecha.dart';
import 'package:flutter_application_1/presentation/bloc/timeBloc/time_bloc_bloc.dart';
import 'package:flutter_application_1/presentation/bloc/timeCrudBloc/time_crud_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/custom_card.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TimeBlocBloc>().add(GetTimeList());
    return BlocBuilder<TimeBlocBloc, TimeBlocState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('Time zone'),
              actions: [
                if (state.infoFechaList.isNotEmpty)
                  PopupMenuButton<InfoFecha>(
                    onSelected: (value) {
                      context.read<TimeCrudBloc>().add(AddTimeFromList(value));
                    },
                    itemBuilder: (BuildContext context) {
                      return state.infoFechaList.map((InfoFecha infoFecha) {
                        return PopupMenuItem<InfoFecha>(
                          value: infoFecha,
                          child: Text(infoFecha.timezone),
                        );
                      }).toList();
                    },
                  )
                else
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cargando...'),
                  ),
              ],
            ),
            body: (!state.isLoading)
                ? BlocBuilder<TimeCrudBloc, TimeCrudState>(
                    builder: (context, state) {
                      return ListView.builder(
                        itemCount: state.infoFechaList.length,
                        itemBuilder: (context, index) {
                          return CustomCard(
                              infoFecha: state.infoFechaList[index]);
                        },
                      );
                    },
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ));
      },
    );
  }
}
