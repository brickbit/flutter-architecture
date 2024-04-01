
import 'package:flutter_architecture/domain/usecase/course_detail_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  final CourseDetailUseCase _useCase;

  DetailCubit(this._useCase): super(const DetailState());

  loadCourse(String link) async {
    emit(state.copyWith(loading: true));
    try {
      final course = await _useCase.invoke(link);
      emit(state.copyWith(course: course, loading: false));
    } on Exception catch(_) {
      emit(state.copyWith(loading: false));
    }
  }
}