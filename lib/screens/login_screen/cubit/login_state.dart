part of 'login_cubit.dart';

@freezed
class LoginStateData with _$LoginStateData {
  const factory LoginStateData({
    @Default(StatusType.init) StatusType status,
    @Default(true) bool isLoginScreen,
    @Default(false) bool showPassword,
  }) = _LoginStateData;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({LoginStateData? data}) = Initial;
  const factory LoginState.showLoginScreen({LoginStateData? data}) =
      ShowLoginScreen;
  const factory LoginState.showPassword({LoginStateData? data}) = ShowPassword;
  const factory LoginState.login({LoginStateData? data}) = Login;
}
