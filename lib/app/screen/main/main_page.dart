import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/navigation/route.dart';
import 'package:flutter_architecture/app/screen/main/main_cubit.dart';
import 'package:flutter_architecture/data/network/course_api.dart';
import 'package:flutter_architecture/data/repository/course_repository_impl.dart';
import 'package:flutter_architecture/domain/usecase/course_list_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../di/di.dart';
import 'main_state.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CourseRepositoryImpl(CourseApi(context.read<Dio>())),
      child: BlocProvider(
        create: (context) =>
            MainCubit(injector.get<CourseListUseCase>())..loadCourses(),
        child: const MainContent(),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return ListCourses(state: state);
        },
      ),
    );
  }
}

class ListCourses extends StatelessWidget {
  final MainState state;

  const ListCourses({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return state.loading
        ? const Center(child: CircularProgressIndicator())
        : ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: state.courses.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => context.push(detailRoute, extra: state.courses[index].link),
                child: ListTile(
                  leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.network(state.courses[index].image)),
                  title: Text(state.courses[index].title),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          );
  }
}
