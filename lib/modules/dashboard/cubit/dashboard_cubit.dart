import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../repository/repository.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  Repository repository;
  DashboardCubit(this.repository) : super(DashboardInitial());
}
