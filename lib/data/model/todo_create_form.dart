import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_create_form.freezed.dart';
part 'todo_create_form.g.dart';

@freezed
class TodoCreateForm with _$TodoCreateForm {
  const factory TodoCreateForm({
    required String description,
  }) = _TodoCreateForm;

  factory TodoCreateForm.fromJson(Map<String, Object?> json) => _$TodoCreateFormFromJson(json);
}
