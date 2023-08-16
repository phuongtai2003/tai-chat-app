import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tai_chat_app/common/global_obs.dart';
import 'package:tai_chat_app/data_repository/data_repository.dart';
import 'package:tai_chat_app/enums/status_type.dart';
import 'package:tai_chat_app/get_it.dart';
import 'package:tai_chat_app/models/chat_user/response/chat_user.dart';
import 'package:tai_chat_app/route_generator.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  final _dataRepository = getIt<DataRepository>();
  MainCubit() : super(const MainState.init(data: MainStateData()));

  Future<void> getCurrentUser() async {
    try {
      emit(
        MainState.getUsers(
          data: state.data?.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      final response = await _dataRepository.getCurrentUserData();
      for (var item in response.docs) {
        final chatUser = ChatUser.fromMap(item.data());
        GlobalObs.updateInfo(
          newName: chatUser.name,
          newEmail: chatUser.email,
        );
      }
      emit(
        MainState.getUsers(
          data: state.data?.copyWith(
            status: StatusType.loaded,
          ),
        ),
      );
    } catch (error) {
      navigator!.pushNamedAndRemoveUntil(
          RouteGenerator.loginScreen, (route) => false);
    }
  }
}
