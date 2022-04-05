import 'package:freezed_annotation/freezed_annotation.dart';

part 'bug_test_state.freezed.dart';

abstract class BugTestStateBase {}

@freezed
class BugTestState with _$BugTestState {

  @With<BugTestStateBase>()
  const factory BugTestState.init()=Init;
  @With<BugTestStateBase>()
  const factory BugTestState.later()=Later;
}
