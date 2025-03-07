import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/state_utilities.dart';
part 'editor_state.freezed.dart';

// dart run build_runner build -d --build-filter="lib/editor/**.dart"

@freezed
abstract class EditorState with _$EditorState {
  const factory EditorState({
    @Default(StateStatus.initial) StateStatus status,
    String? text,
  }) = _EditorState;
}
