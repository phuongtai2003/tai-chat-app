// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainStateData {
  StatusType get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<ChatUser> get usersList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateDataCopyWith<MainStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateDataCopyWith<$Res> {
  factory $MainStateDataCopyWith(
          MainStateData value, $Res Function(MainStateData) then) =
      _$MainStateDataCopyWithImpl<$Res, MainStateData>;
  @useResult
  $Res call({StatusType status, String error, List<ChatUser> usersList});
}

/// @nodoc
class _$MainStateDataCopyWithImpl<$Res, $Val extends MainStateData>
    implements $MainStateDataCopyWith<$Res> {
  _$MainStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? usersList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      usersList: null == usersList
          ? _value.usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<ChatUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainStateDataCopyWith<$Res>
    implements $MainStateDataCopyWith<$Res> {
  factory _$$_MainStateDataCopyWith(
          _$_MainStateData value, $Res Function(_$_MainStateData) then) =
      __$$_MainStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusType status, String error, List<ChatUser> usersList});
}

/// @nodoc
class __$$_MainStateDataCopyWithImpl<$Res>
    extends _$MainStateDataCopyWithImpl<$Res, _$_MainStateData>
    implements _$$_MainStateDataCopyWith<$Res> {
  __$$_MainStateDataCopyWithImpl(
      _$_MainStateData _value, $Res Function(_$_MainStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? usersList = null,
  }) {
    return _then(_$_MainStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      usersList: null == usersList
          ? _value._usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<ChatUser>,
    ));
  }
}

/// @nodoc

class _$_MainStateData implements _MainStateData {
  const _$_MainStateData(
      {this.status = StatusType.init,
      this.error = '',
      final List<ChatUser> usersList = const []})
      : _usersList = usersList;

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final String error;
  final List<ChatUser> _usersList;
  @override
  @JsonKey()
  List<ChatUser> get usersList {
    if (_usersList is EqualUnmodifiableListView) return _usersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersList);
  }

  @override
  String toString() {
    return 'MainStateData(status: $status, error: $error, usersList: $usersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._usersList, _usersList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error,
      const DeepCollectionEquality().hash(_usersList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainStateDataCopyWith<_$_MainStateData> get copyWith =>
      __$$_MainStateDataCopyWithImpl<_$_MainStateData>(this, _$identity);
}

abstract class _MainStateData implements MainStateData {
  const factory _MainStateData(
      {final StatusType status,
      final String error,
      final List<ChatUser> usersList}) = _$_MainStateData;

  @override
  StatusType get status;
  @override
  String get error;
  @override
  List<ChatUser> get usersList;
  @override
  @JsonKey(ignore: true)
  _$$_MainStateDataCopyWith<_$_MainStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  MainStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainStateData? data) init,
    required TResult Function(MainStateData? data) getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainStateData? data)? init,
    TResult? Function(MainStateData? data)? getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainStateData? data)? init,
    TResult Function(MainStateData? data)? getUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetUsers value) getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(GetUsers value)? getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetUsers value)? getUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call({MainStateData? data});

  $MainStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MainStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainStateData? data});

  @override
  $MainStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res, _$Init>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Init(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainStateData?,
    ));
  }
}

/// @nodoc

class _$Init implements Init {
  const _$Init({this.data});

  @override
  final MainStateData? data;

  @override
  String toString() {
    return 'MainState.init(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Init &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitCopyWith<_$Init> get copyWith =>
      __$$InitCopyWithImpl<_$Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainStateData? data) init,
    required TResult Function(MainStateData? data) getUsers,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainStateData? data)? init,
    TResult? Function(MainStateData? data)? getUsers,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainStateData? data)? init,
    TResult Function(MainStateData? data)? getUsers,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetUsers value) getUsers,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(GetUsers value)? getUsers,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetUsers value)? getUsers,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements MainState {
  const factory Init({final MainStateData? data}) = _$Init;

  @override
  MainStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitCopyWith<_$Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUsersCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$GetUsersCopyWith(
          _$GetUsers value, $Res Function(_$GetUsers) then) =
      __$$GetUsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainStateData? data});

  @override
  $MainStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetUsersCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$GetUsers>
    implements _$$GetUsersCopyWith<$Res> {
  __$$GetUsersCopyWithImpl(_$GetUsers _value, $Res Function(_$GetUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetUsers(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainStateData?,
    ));
  }
}

/// @nodoc

class _$GetUsers implements GetUsers {
  const _$GetUsers({this.data});

  @override
  final MainStateData? data;

  @override
  String toString() {
    return 'MainState.getUsers(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsers &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersCopyWith<_$GetUsers> get copyWith =>
      __$$GetUsersCopyWithImpl<_$GetUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainStateData? data) init,
    required TResult Function(MainStateData? data) getUsers,
  }) {
    return getUsers(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainStateData? data)? init,
    TResult? Function(MainStateData? data)? getUsers,
  }) {
    return getUsers?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainStateData? data)? init,
    TResult Function(MainStateData? data)? getUsers,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetUsers value) getUsers,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(GetUsers value)? getUsers,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetUsers value)? getUsers,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class GetUsers implements MainState {
  const factory GetUsers({final MainStateData? data}) = _$GetUsers;

  @override
  MainStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetUsersCopyWith<_$GetUsers> get copyWith =>
      throw _privateConstructorUsedError;
}
