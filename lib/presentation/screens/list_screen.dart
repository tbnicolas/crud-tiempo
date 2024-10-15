import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/bloc/bloc/time_bloc_bloc.dart';
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
          body: (!state.isLoading)
          ? ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return CustomCard();
          },
         )
         : const Center(child: CircularProgressIndicator(),)
        );
      },
    );
  }
}
