part of 'main_cubit.dart';

@freezed
class MainStateData with _$MainStateData {
  const factory MainStateData({
    @Default(StatusType.init) StatusType status,
    @Default('') String error,
    @Default([]) List<ChatUser> usersList,
  }) = _MainStateData;
}

@freezed
class MainState with _$MainState {
  const factory MainState.init({MainStateData? data}) = Init;
  const factory MainState.getUsers({MainStateData? data}) = GetUsers;
}
