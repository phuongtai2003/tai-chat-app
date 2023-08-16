import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tai_chat_app/common/storage/app_prefs.dart';
import 'package:tai_chat_app/common/ui_helpers.dart';
import 'package:tai_chat_app/data_repository/data_repository.dart';
import 'package:tai_chat_app/enums/status_type.dart';
import 'package:tai_chat_app/get_it.dart';
import 'package:tai_chat_app/models/chat_user/request/add_chat_user_request.dart';
import 'package:tai_chat_app/route_generator.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final _dataRepository = getIt<DataRepository>();
  final _appPrefs = getIt<AppPrefs>();
  LoginCubit() : super(const LoginState.initial(data: LoginStateData()));

  Future<void> register({
    required String username,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      if (password.compareTo(confirmPassword) != 0) {
        UIHelpers.showSnackBar(msg: 'password_not_match'.tr);
      } else {
        UIHelpers.showLoading();
        await _appPrefs.saveLoginEmail(email: email);
        await _appPrefs.saveLoginPassword(password: password);
        final userCredentials = await _dataRepository.register(
          email: email,
          password: password,
        );
        if (userCredentials.user != null) {
          userCredentials.user!.sendEmailVerification();
          UIHelpers.showSnackBar(msg: 'user_created_successfully'.tr);
          await _dataRepository.createUser(
            newUser: AddChatUserRequest(name: username, email: email),
          );
        }
      }
    } catch (error) {
      UIHelpers.showSnackBar(
        msg: error.toString(),
      );
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> login({required String email, required String password}) async {
    try {
      UIHelpers.showLoading();
      await _appPrefs.saveLoginEmail(email: email);
      await _appPrefs.saveLoginPassword(password: password);
      final userCredential =
          await _dataRepository.login(email: email, password: password);
      if (userCredential.user != null &&
          userCredential.user?.emailVerified == true) {
        navigator!.pushNamedAndRemoveUntil(RouteGenerator.mainScreen, (value) {
          return false;
        });
      } else {
        UIHelpers.showSnackBar(msg: 'email_not_verified'.tr);
      }
    } catch (error) {
      UIHelpers.showSnackBar(
        msg: error.toString(),
      );
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> loginOnStart() async {
    try {
      final user = _dataRepository.getCurrentUser();
      if (user != null && user.emailVerified == true) {
        navigator!.pushNamedAndRemoveUntil(
          RouteGenerator.mainScreen,
          (value) => false,
        );
      }
    } catch (error) {
      print(error.toString());
    }
  }

  void changeScreen({required bool isLoginScreen}) {
    emit(
      LoginState.showLoginScreen(
        data: state.data?.copyWith(
          isLoginScreen: isLoginScreen,
        ),
      ),
    );
  }

  void showPassword({required bool showPass}) {
    emit(
      LoginState.showPassword(
        data: state.data?.copyWith(
          showPassword: showPass,
        ),
      ),
    );
  }

  Future<void> changeLanguage({required Locale locale}) async {
    try {
      await _appPrefs.saveLanguage(languageCode: locale.languageCode);
      Get.updateLocale(locale);
    } catch (error) {
      debugPrint(error.toString());
    }
  }
}
