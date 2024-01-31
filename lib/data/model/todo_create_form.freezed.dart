// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_create_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoCreateForm _$TodoCreateFormFromJson(Map<String, dynamic> json) {
  return _TodoCreateForm.fromJson(json);
}

/// @nodoc
mixin _$TodoCreateForm {
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCreateFormCopyWith<TodoCreateForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCreateFormCopyWith<$Res> {
  factory $TodoCreateFormCopyWith(
          TodoCreateForm value, $Res Function(TodoCreateForm) then) =
      _$TodoCreateFormCopyWithImpl<$Res, TodoCreateForm>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$TodoCreateFormCopyWithImpl<$Res, $Val extends TodoCreateForm>
    implements $TodoCreateFormCopyWith<$Res> {
  _$TodoCreateFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoCreateFormImplCopyWith<$Res>
    implements $TodoCreateFormCopyWith<$Res> {
  factory _$$TodoCreateFormImplCopyWith(_$TodoCreateFormImpl value,
          $Res Function(_$TodoCreateFormImpl) then) =
      __$$TodoCreateFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$TodoCreateFormImplCopyWithImpl<$Res>
    extends _$TodoCreateFormCopyWithImpl<$Res, _$TodoCreateFormImpl>
    implements _$$TodoCreateFormImplCopyWith<$Res> {
  __$$TodoCreateFormImplCopyWithImpl(
      _$TodoCreateFormImpl _value, $Res Function(_$TodoCreateFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$TodoCreateFormImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoCreateFormImpl implements _TodoCreateForm {
  const _$TodoCreateFormImpl({required this.description});

  factory _$TodoCreateFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoCreateFormImplFromJson(json);

  @override
  final String description;

  @override
  String toString() {
    return 'TodoCreateForm(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoCreateFormImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoCreateFormImplCopyWith<_$TodoCreateFormImpl> get copyWith =>
      __$$TodoCreateFormImplCopyWithImpl<_$TodoCreateFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoCreateFormImplToJson(
      this,
    );
  }
}

abstract class _TodoCreateForm implements TodoCreateForm {
  const factory _TodoCreateForm({required final String description}) =
      _$TodoCreateFormImpl;

  factory _TodoCreateForm.fromJson(Map<String, dynamic> json) =
      _$TodoCreateFormImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$TodoCreateFormImplCopyWith<_$TodoCreateFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
