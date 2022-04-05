import 'package:bloc/bloc.dart';

import 'bug_test_state.dart';

class BugTestCubit extends Cubit<BugTestState> {
  BugTestCubit() : super(const BugTestState.init()) {
    _init();
  }

  _init() async {
    //await Future.delayed(const Duration(milliseconds: 1));
    emit(const BugTestState.later());
  }
}
