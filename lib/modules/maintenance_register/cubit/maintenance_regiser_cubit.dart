import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'maintenance_regiser_state.dart';

class MaintenanceRegiserCubit extends Cubit<MaintenanceRegiserState> {
  MaintenanceRegiserCubit() : super(MaintenanceRegiserInitial());
}
