// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_slim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoSlim _$TodoSlimFromJson(Map<String, dynamic> json) {
  return _TodoSlim.fromJson(json);
}

/// @nodoc
mixin _$TodoSlim {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoSlimCopyWith<TodoSlim> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoSlimCopyWith<$Res> {
  factory $TodoSlimCopyWith(TodoSlim value, $Res Function(TodoSlim) then) =
      _$TodoSlimCopyWithImpl<$Res, TodoSlim>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String description});
}

/// @nodoc
class _$TodoSlimCopyWithImpl<$Res, $Val extends TodoSlim>
    implements $TodoSlimCopyWith<$Res> {
  _$TodoSlimCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoSlimImplCopyWith<$Res>
    implements $TodoSlimCopyWith<$Res> {
  factory _$$TodoSlimImplCopyWith(
          _$TodoSlimImpl value, $Res Function(_$TodoSlimImpl) then) =
      __$$TodoSlimImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String description});
}

/// @nodoc
class __$$TodoSlimImplCopyWithImpl<$Res>
    extends _$TodoSlimCopyWithImpl<$Res, _$TodoSlimImpl>
    implements _$$TodoSlimImplCopyWith<$Res> {
  __$$TodoSlimImplCopyWithImpl(
      _$TodoSlimImpl _value, $Res Function(_$TodoSlimImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_$TodoSlimImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoSlimImpl implements _TodoSlim {
  const _$TodoSlimImpl(
      {@JsonKey(name: '_id') required this.id, required this.description});

  factory _$TodoSlimImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoSlimImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String description;

  @override
  String toString() {
    return 'TodoSlim(id: $id, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoSlimImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoSlimImplCopyWith<_$TodoSlimImpl> get copyWith =>
      __$$TodoSlimImplCopyWithImpl<_$TodoSlimImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoSlimImplToJson(
      this,
    );
  }
}

abstract class _TodoSlim implements TodoSlim {
  const factory _TodoSlim(
      {@JsonKey(name: '_id') required final String id,
      required final String description}) = _$TodoSlimImpl;

  factory _TodoSlim.fromJson(Map<String, dynamic> json) =
      _$TodoSlimImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$TodoSlimImplCopyWith<_$TodoSlimImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
