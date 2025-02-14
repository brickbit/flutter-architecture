
import 'package:flutter_architecture/app/screen/splash/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {

  SplashCubit() : super(const SplashState());

  loadNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    emit(state.copyWith(finish: true));
  }

}