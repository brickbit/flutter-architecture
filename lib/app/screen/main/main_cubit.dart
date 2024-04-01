
import 'package:flutter_architecture/domain/usecase/course_list_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  final CourseListUseCase _useCase;

  MainCubit(this._useCase): super(const MainState());

  loadCourses() async {
    emit(state.copyWith(loading: true));
    try {
      final courses = await _useCase.invoke(null);
      emit(state.copyWith(courses: courses, loading: false));
    } on Exception catch(_) {
      emit(state.copyWith(loading: false));
    }
  }
}