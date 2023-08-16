import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:tai_chat_app/common/global_images.dart';
import 'package:tai_chat_app/common/storage/app_prefs.dart';
import 'package:tai_chat_app/common/widgets/custom_text_form_field.dart';
import 'package:tai_chat_app/get_it.dart';
import 'package:tai_chat_app/screens/login_screen/cubit/login_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
      ],
      child: const LoginScreen(),
    );
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    getInputInfo();
    context.read<LoginCubit>().loginOnStart();
  }

  void getInputInfo() {
    emailTxt.text = getIt<AppPrefs>().getEmailInput() ?? '';
    passwordTxt.text = getIt<AppPrefs>().getPasswordInput() ?? '';
  }

  final emailTxt = TextEditingController();
  final passwordTxt = TextEditingController();
  final confirmPasswordTxt = TextEditingController();
  final usernameTxt = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();
  final registerFormKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailTxt.dispose();
    passwordTxt.dispose();
    confirmPasswordTxt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items: GlobalImages.introImages
                    .map(
                      (e) => Image.asset(
                        e,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: MediaQuery.of(context).size.height * 0.3,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 4),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInBack,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              AnimatedToggleSwitch<Locale>.rolling(
                innerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                current: Get.locale ?? const Locale('en'),
                borderWidth: 0,
                borderColor: Colors.transparent,
                values: const [
                  Locale('en'),
                  Locale('vi'),
                ],
                onChanged: (value) {
                  context.read<LoginCubit>().changeLanguage(locale: value);
                },
                iconBuilder: (value, size, isEn) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Image.asset(
                      value == const Locale('en')
                          ? GlobalImages.ukIcon
                          : GlobalImages.vietIcon,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      final index = state.data?.isLoginScreen == true ? 0 : 1;
                      return ToggleSwitch(
                        minWidth: 200,
                        initialLabelIndex: index,
                        totalSwitches: 2,
                        activeFgColor: Colors.white,
                        inactiveFgColor: Colors.blue,
                        activeBgColor: const [
                          Colors.blue,
                        ],
                        inactiveBgColor: Colors.white,
                        borderWidth: 0.5,
                        borderColor: const [Colors.blueAccent],
                        customTextStyles: const [
                          TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                        labels: [
                          'login'.tr,
                          'register'.tr,
                        ],
                        onToggle: (value) {
                          context.read<LoginCubit>().changeScreen(
                                isLoginScreen: value == 1 ? false : true,
                              );
                        },
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              buildForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildForm() {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        switch (state.data!.isLoginScreen) {
          case true:
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Form(
                key: loginFormKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: emailTxt,
                      field: 'Email',
                      headingIcon: Icons.mail_outline,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      controller: passwordTxt,
                      field: 'password'.tr,
                      headingIcon: Icons.lock,
                      footIcon: state.data!.showPassword == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                      isPassword: !state.data!.showPassword,
                      footIconTap: () {
                        context.read<LoginCubit>().showPassword(
                              showPass: !state.data!.showPassword,
                            );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(
                          50,
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.5),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                      onPressed: () {
                        context.read<LoginCubit>().login(
                              email: emailTxt.text,
                              password: passwordTxt.text,
                            );
                      },
                      child: Text(
                        'login'.tr,
                      ),
                    ),
                  ],
                ),
              ),
            );
          default:
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Form(
                key: registerFormKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: usernameTxt,
                      field: 'username'.tr,
                      headingIcon: Icons.person,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      controller: emailTxt,
                      field: 'Email',
                      headingIcon: Icons.mail_outline,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      controller: passwordTxt,
                      field: 'password'.tr,
                      headingIcon: Icons.lock,
                      footIcon: state.data!.showPassword == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                      isPassword: !state.data!.showPassword,
                      footIconTap: () {
                        context.read<LoginCubit>().showPassword(
                              showPass: !state.data!.showPassword,
                            );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      controller: confirmPasswordTxt,
                      field: 'confirm_password'.tr,
                      headingIcon: Icons.lock,
                      footIcon: state.data!.showPassword == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                      isPassword: !state.data!.showPassword,
                      footIconTap: () {
                        context.read<LoginCubit>().showPassword(
                              showPass: !state.data!.showPassword,
                            );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(
                          50,
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.5),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (registerFormKey.currentState!.validate()) {
                          context.read<LoginCubit>().register(
                                username: usernameTxt.text,
                                email: emailTxt.text,
                                password: passwordTxt.text,
                                confirmPassword: confirmPasswordTxt.text,
                              );
                        }
                      },
                      child: Text(
                        'register'.tr,
                      ),
                    ),
                  ],
                ),
              ),
            );
        }
      },
    );
  }
}
