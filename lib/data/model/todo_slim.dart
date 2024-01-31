import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_slim.freezed.dart';
part 'todo_slim.g.dart';

@freezed
class TodoSlim with _$TodoSlim {
  const factory TodoSlim({
    @JsonKey(name: '_id') required String id,
    required String description,
    // @Default(false) bool done,
  }) = _TodoSlim;

  factory TodoSlim.fromJson(Map<String, Object?> json) => _$TodoSlimFromJson(json);
}
