import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../repository/repository.dart';


part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  Repository repository;

  SplashCubit(this.repository) : super(SplashInitial());

  void loadSplash() {
    Future.delayed(const Duration(seconds: 3), () {
      navigationPage();
    });
  }

  void navigationPage() {
    repository.isLoggedIn().then((value) {
      print("value"+value.toString());
      if (value) {
        emit(LoadHomeScreen());
      } else {
        emit(loadLoginScreen());
      }
    });
  }
}
