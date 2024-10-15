import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/router/app_router.dart';
import 'package:flutter_application_1/config/theme/app_theme.dart';
import 'package:flutter_application_1/infrastructure/datasources/local_time_datasource.dart';
import 'package:flutter_application_1/infrastructure/repositories/time_repository_impl.dart';
import 'package:flutter_application_1/presentation/bloc/bloc/time_bloc_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final timeZoneRepository = TimeRepositoryImpl(timeDatasourcesInterface: LocalTimeDatasource());

    return BlocProvider(
      create: (_) => TimeBlocBloc(timeRepository: timeZoneRepository),
      child: MaterialApp.router(
        routerConfig: appRouter,
        title: 'Material App',
        theme: AppTheme().getTheme(),
      ),
    );
  }
}
