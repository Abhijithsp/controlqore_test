import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../repository/repository.dart';

part 'register_state.dart';

class LoginCubit extends Cubit<LoginState> {
  Repository repository;

  LoginCubit(this.repository) : super(LoginInitial());

  // void doLogin(username, password) {
  //   if (username == "") {
  //     emit(LoginError("Enter Username"));
  //   } else if (password == "") {
  //     emit(LoginError("Enter Password"));
  //   } else {
  //     emit(LoginProcessing());
  //     repository.doLogin(username, password).then((value) {
  //       if (value == 200) {
  //         emit(LoginSuccess());
  //         repository
  //             .saveUserData(
  //           value.data!.user!.id!.toString(),
  //           value.data!.token!,
  //           value.data!.user!.username!,
  //           value.data!.user!.usertype!.id!.toString(),
  //         )
  //             .then((value) {
  //           if (value) {
  //             emit(LoginSuccess());
  //           }
  //         });
  //       } else if (value == 400) {
  //         emit(LoginError("Invalid username/password"));
  //       } else if (value == 404) {
  //         emit(LoginError("404 error found"));
  //       } else {
  //         emit(LoginError("failed to login,Try Again.."));
  //       }
  //     });
  //   }
  // }
}
