
import 'package:bloc_test_bug/bug_test_cubit.dart';
import 'package:bloc_test_bug/bug_test_state.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloc_test/bloc_test.dart';


void main() {
  blocTest<BugTestCubit, BugTestState>(
    'ReportCubit with draft completed report should emit the continue status',
    build: () => BugTestCubit(),
    act: (cubit) async {
      await Future.delayed(const Duration(milliseconds: 600));
    },
    wait: Duration(milliseconds: 600),
    expect: () => [
      equals(const BugTestState.later())
      //isA<ContinueReport>()
    ],
  );
}
