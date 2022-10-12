import 'package:flutter_bloc/flutter_bloc.dart';

enum AppbarState { normal, search }

class AppbarHandlingCubit extends Cubit<AppbarState> {
  AppbarHandlingCubit() : super(AppbarState.normal);

  void toggle() {
    switch (state) {
      case AppbarState.normal:
        emit(AppbarState.search);
        break;
      case AppbarState.search:
        emit(AppbarState.normal);
        break;
    }
  }
}
