// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  Status get fetchTodosStatus => throw _privateConstructorUsedError;
  Status get sendDeleteStatus => throw _privateConstructorUsedError;
  List<TodoSlim> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {Status fetchTodosStatus, Status sendDeleteStatus, List<TodoSlim> todos});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchTodosStatus = null,
    Object? sendDeleteStatus = null,
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      fetchTodosStatus: null == fetchTodosStatus
          ? _value.fetchTodosStatus
          : fetchTodosStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      sendDeleteStatus: null == sendDeleteStatus
          ? _value.sendDeleteStatus
          : sendDeleteStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoSlim>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoStateImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoStateImplCopyWith(
          _$TodoStateImpl value, $Res Function(_$TodoStateImpl) then) =
      __$$TodoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status fetchTodosStatus, Status sendDeleteStatus, List<TodoSlim> todos});
}

/// @nodoc
class __$$TodoStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateImpl>
    implements _$$TodoStateImplCopyWith<$Res> {
  __$$TodoStateImplCopyWithImpl(
      _$TodoStateImpl _value, $Res Function(_$TodoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchTodosStatus = null,
    Object? sendDeleteStatus = null,
    Object? todos = null,
  }) {
    return _then(_$TodoStateImpl(
      fetchTodosStatus: null == fetchTodosStatus
          ? _value.fetchTodosStatus
          : fetchTodosStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      sendDeleteStatus: null == sendDeleteStatus
          ? _value.sendDeleteStatus
          : sendDeleteStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoSlim>,
    ));
  }
}

/// @nodoc

class _$TodoStateImpl implements _TodoState {
  const _$TodoStateImpl(
      {this.fetchTodosStatus = Status.initial,
      this.sendDeleteStatus = Status.initial,
      final List<TodoSlim> todos = const []})
      : _todos = todos;

  @override
  @JsonKey()
  final Status fetchTodosStatus;
  @override
  @JsonKey()
  final Status sendDeleteStatus;
  final List<TodoSlim> _todos;
  @override
  @JsonKey()
  List<TodoSlim> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoState(fetchTodosStatus: $fetchTodosStatus, sendDeleteStatus: $sendDeleteStatus, todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateImpl &&
            (identical(other.fetchTodosStatus, fetchTodosStatus) ||
                other.fetchTodosStatus == fetchTodosStatus) &&
            (identical(other.sendDeleteStatus, sendDeleteStatus) ||
                other.sendDeleteStatus == sendDeleteStatus) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchTodosStatus,
      sendDeleteStatus, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      __$$TodoStateImplCopyWithImpl<_$TodoStateImpl>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {final Status fetchTodosStatus,
      final Status sendDeleteStatus,
      final List<TodoSlim> todos}) = _$TodoStateImpl;

  @override
  Status get fetchTodosStatus;
  @override
  Status get sendDeleteStatus;
  @override
  List<TodoSlim> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
