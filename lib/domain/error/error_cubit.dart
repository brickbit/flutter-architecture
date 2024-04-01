
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorCubit extends Cubit<DioException?> {
  ErrorCubit() : super(null);

  showRestError(DioException error) {
    emit(error);
  }
}