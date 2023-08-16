// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginStateData {
  StatusType get status => throw _privateConstructorUsedError;
  bool get isLoginScreen => throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateDataCopyWith<LoginStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateDataCopyWith<$Res> {
  factory $LoginStateDataCopyWith(
          LoginStateData value, $Res Function(LoginStateData) then) =
      _$LoginStateDataCopyWithImpl<$Res, LoginStateData>;
  @useResult
  $Res call({StatusType status, bool isLoginScreen, bool showPassword});
}

/// @nodoc
class _$LoginStateDataCopyWithImpl<$Res, $Val extends LoginStateData>
    implements $LoginStateDataCopyWith<$Res> {
  _$LoginStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLoginScreen = null,
    Object? showPassword = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      isLoginScreen: null == isLoginScreen
          ? _value.isLoginScreen
          : isLoginScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateDataCopyWith<$Res>
    implements $LoginStateDataCopyWith<$Res> {
  factory _$$_LoginStateDataCopyWith(
          _$_LoginStateData value, $Res Function(_$_LoginStateData) then) =
      __$$_LoginStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusType status, bool isLoginScreen, bool showPassword});
}

/// @nodoc
class __$$_LoginStateDataCopyWithImpl<$Res>
    extends _$LoginStateDataCopyWithImpl<$Res, _$_LoginStateData>
    implements _$$_LoginStateDataCopyWith<$Res> {
  __$$_LoginStateDataCopyWithImpl(
      _$_LoginStateData _value, $Res Function(_$_LoginStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLoginScreen = null,
    Object? showPassword = null,
  }) {
    return _then(_$_LoginStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      isLoginScreen: null == isLoginScreen
          ? _value.isLoginScreen
          : isLoginScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginStateData implements _LoginStateData {
  const _$_LoginStateData(
      {this.status = StatusType.init,
      this.isLoginScreen = true,
      this.showPassword = false});

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final bool isLoginScreen;
  @override
  @JsonKey()
  final bool showPassword;

  @override
  String toString() {
    return 'LoginStateData(status: $status, isLoginScreen: $isLoginScreen, showPassword: $showPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLoginScreen, isLoginScreen) ||
                other.isLoginScreen == isLoginScreen) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, isLoginScreen, showPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateDataCopyWith<_$_LoginStateData> get copyWith =>
      __$$_LoginStateDataCopyWithImpl<_$_LoginStateData>(this, _$identity);
}

abstract class _LoginStateData implements LoginStateData {
  const factory _LoginStateData(
      {final StatusType status,
      final bool isLoginScreen,
      final bool showPassword}) = _$_LoginStateData;

  @override
  StatusType get status;
  @override
  bool get isLoginScreen;
  @override
  bool get showPassword;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateDataCopyWith<_$_LoginStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  LoginStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) showLoginScreen,
    required TResult Function(LoginStateData? data) showPassword,
    required TResult Function(LoginStateData? data) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? showLoginScreen,
    TResult? Function(LoginStateData? data)? showPassword,
    TResult? Function(LoginStateData? data)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? showLoginScreen,
    TResult Function(LoginStateData? data)? showPassword,
    TResult Function(LoginStateData? data)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShowLoginScreen value) showLoginScreen,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ShowLoginScreen value)? showLoginScreen,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShowLoginScreen value)? showLoginScreen,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({LoginStateData? data});

  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

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
              as LoginStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStateData? data});

  @override
  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Initial(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final LoginStateData? data;

  @override
  String toString() {
    return 'LoginState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) showLoginScreen,
    required TResult Function(LoginStateData? data) showPassword,
    required TResult Function(LoginStateData? data) login,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? showLoginScreen,
    TResult? Function(LoginStateData? data)? showPassword,
    TResult? Function(LoginStateData? data)? login,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? showLoginScreen,
    TResult Function(LoginStateData? data)? showPassword,
    TResult Function(LoginStateData? data)? login,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShowLoginScreen value) showLoginScreen,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Login value) login,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ShowLoginScreen value)? showLoginScreen,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Login value)? login,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShowLoginScreen value)? showLoginScreen,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial({final LoginStateData? data}) = _$Initial;

  @override
  LoginStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowLoginScreenCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$ShowLoginScreenCopyWith(
          _$ShowLoginScreen value, $Res Function(_$ShowLoginScreen) then) =
      __$$ShowLoginScreenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStateData? data});

  @override
  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ShowLoginScreenCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ShowLoginScreen>
    implements _$$ShowLoginScreenCopyWith<$Res> {
  __$$ShowLoginScreenCopyWithImpl(
      _$ShowLoginScreen _value, $Res Function(_$ShowLoginScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ShowLoginScreen(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginStateData?,
    ));
  }
}

/// @nodoc

class _$ShowLoginScreen implements ShowLoginScreen {
  const _$ShowLoginScreen({this.data});

  @override
  final LoginStateData? data;

  @override
  String toString() {
    return 'LoginState.showLoginScreen(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowLoginScreen &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowLoginScreenCopyWith<_$ShowLoginScreen> get copyWith =>
      __$$ShowLoginScreenCopyWithImpl<_$ShowLoginScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) showLoginScreen,
    required TResult Function(LoginStateData? data) showPassword,
    required TResult Function(LoginStateData? data) login,
  }) {
    return showLoginScreen(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? showLoginScreen,
    TResult? Function(LoginStateData? data)? showPassword,
    TResult? Function(LoginStateData? data)? login,
  }) {
    return showLoginScreen?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? showLoginScreen,
    TResult Function(LoginStateData? data)? showPassword,
    TResult Function(LoginStateData? data)? login,
    required TResult orElse(),
  }) {
    if (showLoginScreen != null) {
      return showLoginScreen(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShowLoginScreen value) showLoginScreen,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Login value) login,
  }) {
    return showLoginScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ShowLoginScreen value)? showLoginScreen,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Login value)? login,
  }) {
    return showLoginScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShowLoginScreen value)? showLoginScreen,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (showLoginScreen != null) {
      return showLoginScreen(this);
    }
    return orElse();
  }
}

abstract class ShowLoginScreen implements LoginState {
  const factory ShowLoginScreen({final LoginStateData? data}) =
      _$ShowLoginScreen;

  @override
  LoginStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ShowLoginScreenCopyWith<_$ShowLoginScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowPasswordCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$ShowPasswordCopyWith(
          _$ShowPassword value, $Res Function(_$ShowPassword) then) =
      __$$ShowPasswordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStateData? data});

  @override
  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ShowPasswordCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ShowPassword>
    implements _$$ShowPasswordCopyWith<$Res> {
  __$$ShowPasswordCopyWithImpl(
      _$ShowPassword _value, $Res Function(_$ShowPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ShowPassword(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginStateData?,
    ));
  }
}

/// @nodoc

class _$ShowPassword implements ShowPassword {
  const _$ShowPassword({this.data});

  @override
  final LoginStateData? data;

  @override
  String toString() {
    return 'LoginState.showPassword(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPassword &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowPasswordCopyWith<_$ShowPassword> get copyWith =>
      __$$ShowPasswordCopyWithImpl<_$ShowPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) showLoginScreen,
    required TResult Function(LoginStateData? data) showPassword,
    required TResult Function(LoginStateData? data) login,
  }) {
    return showPassword(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? showLoginScreen,
    TResult? Function(LoginStateData? data)? showPassword,
    TResult? Function(LoginStateData? data)? login,
  }) {
    return showPassword?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? showLoginScreen,
    TResult Function(LoginStateData? data)? showPassword,
    TResult Function(LoginStateData? data)? login,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShowLoginScreen value) showLoginScreen,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Login value) login,
  }) {
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ShowLoginScreen value)? showLoginScreen,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Login value)? login,
  }) {
    return showPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShowLoginScreen value)? showLoginScreen,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class ShowPassword implements LoginState {
  const factory ShowPassword({final LoginStateData? data}) = _$ShowPassword;

  @override
  LoginStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ShowPasswordCopyWith<_$ShowPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$LoginCopyWith(_$Login value, $Res Function(_$Login) then) =
      __$$LoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStateData? data});

  @override
  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LoginCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$Login>
    implements _$$LoginCopyWith<$Res> {
  __$$LoginCopyWithImpl(_$Login _value, $Res Function(_$Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Login(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginStateData?,
    ));
  }
}

/// @nodoc

class _$Login implements Login {
  const _$Login({this.data});

  @override
  final LoginStateData? data;

  @override
  String toString() {
    return 'LoginState.login(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Login &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCopyWith<_$Login> get copyWith =>
      __$$LoginCopyWithImpl<_$Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) showLoginScreen,
    required TResult Function(LoginStateData? data) showPassword,
    required TResult Function(LoginStateData? data) login,
  }) {
    return login(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? showLoginScreen,
    TResult? Function(LoginStateData? data)? showPassword,
    TResult? Function(LoginStateData? data)? login,
  }) {
    return login?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? showLoginScreen,
    TResult Function(LoginStateData? data)? showPassword,
    TResult Function(LoginStateData? data)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShowLoginScreen value) showLoginScreen,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ShowLoginScreen value)? showLoginScreen,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShowLoginScreen value)? showLoginScreen,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements LoginState {
  const factory Login({final LoginStateData? data}) = _$Login;

  @override
  LoginStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$LoginCopyWith<_$Login> get copyWith => throw _privateConstructorUsedError;
}
