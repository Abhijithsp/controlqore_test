import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../repository/repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  Repository repository;

  LoginCubit(this.repository) : super(LoginInitial());

  void doLogin(mobileNo) {
    if (mobileNo == "") {
      emit(LoginError("Enter Mobile Number"));
    } else {
      emit(LoginProcessing());
      repository.doLogin(mobileNo).then((value) {
        if (value == 200) {
          emit(LoginSuccess());
          repository.saveUserData(
            value.data!.user!.id!.toString(),
            value.data!.token!,
            value.data!.user!.username!,
            value.data!.user!.usertype!.id!.toString(),
          )
              .then((value) {
            if (value) {
              emit(LoginSuccess());
            }
          });
        } else if (value == 400) {
          emit(LoginError("Invalid mobile number"));
        } else if (value == 404) {
          emit(LoginError("404 error found"));
        } else {
          emit(LoginError("failed to login,Try Again.."));
        }
      });
    }
  }
}
