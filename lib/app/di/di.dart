


import 'package:dio/dio.dart';
import 'package:flutter_architecture/app/screen/detail/detail_cubit.dart';
import 'package:flutter_architecture/app/screen/main/main_cubit.dart';
import 'package:flutter_architecture/app/screen/splash/splash_cubit.dart';
import 'package:flutter_architecture/data/network/course_api.dart';
import 'package:flutter_architecture/data/repository/course_repository_impl.dart';
import 'package:flutter_architecture/domain/error/error_cubit.dart';
import 'package:flutter_architecture/domain/repository/course_repository.dart';
import 'package:flutter_architecture/domain/usecase/course_detail_use_case.dart';
import 'package:flutter_architecture/domain/usecase/course_list_use_case.dart';
import 'package:injector/injector.dart';

import '../../data/environment/env.dart';
import '../../data/environment/env_dev.dart';

final injector = Injector.appInstance;

void initInjection() {
    const String envName = String.fromEnvironment('ENVIRONMENT', defaultValue: EnvDev.name);
    ENV().initConfig(envName);
    final dio = Dio(BaseOptions(baseUrl: ENV().config.basePath));

    // Data sources injection
    injector.registerSingleton<CourseApi>(() => CourseApi(dio));

    // Repository injection
    injector.registerSingleton<CourseRepository>(() => CourseRepositoryImpl(
      injector.get<CourseApi>(),
    ));

    // Use case injection
    injector.registerSingleton<CourseListUseCase>(() => CourseListUseCase(
        repository: injector.get<CourseRepository>(),
    ));
    injector.registerSingleton<CourseDetailUseCase>(() => CourseDetailUseCase(
      repository: injector.get<CourseRepository>(),
    ));

    // Cubit injection
    injector.registerSingleton<ErrorCubit>(() => ErrorCubit());
    injector.registerSingleton<SplashCubit>(() => SplashCubit());
    injector.registerSingleton<MainCubit>(() => MainCubit(injector.get<CourseListUseCase>()));
    injector.registerSingleton<DetailCubit>(() => DetailCubit(injector.get<CourseDetailUseCase>()));

}