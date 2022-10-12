import 'package:flutter_bloc/flutter_bloc.dart';

class NavBarCubit extends Cubit<int> {
  NavBarCubit() : super(0);

  void goHome() {
    emit(0);
  }

  void goPlaylist() {
    emit(1);
  }
}
