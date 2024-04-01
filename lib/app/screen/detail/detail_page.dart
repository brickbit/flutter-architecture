
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/di/di.dart';
import 'package:flutter_architecture/domain/usecase/course_detail_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../data/network/course_api.dart';
import '../../../data/repository/course_repository_impl.dart';
import 'detail_cubit.dart';
import 'detail_state.dart';

class DetailPage extends StatelessWidget {
  final String link;
  const DetailPage({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
    create: (context) => CourseRepositoryImpl(CourseApi(context.read<Dio>())),
    child: BlocProvider(
      create: (context) =>
      DetailCubit(injector.get<CourseDetailUseCase>())..loadCourse(link),
      child: const DetailContent(),
    ),
    );
  }
}

class DetailContent extends StatelessWidget {
  const DetailContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailCubit, DetailState>(
      builder: (context, state) {
        return state.loading ? const Scaffold(body: Center(child: CircularProgressIndicator())) : Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){ context.pop(); },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 24.0,
          ),
        ),
        title: Text(state.course?.title ?? ''),
      ),
      body: SingleChildScrollView(
        child: Column(
              children: [
                Image.network(state.course?.image ?? ''),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Text(state.course?.description ?? ''),
                    ],
                  ),
                ),
              ],
            ),
      ),
        );
      },
    );
  }
}