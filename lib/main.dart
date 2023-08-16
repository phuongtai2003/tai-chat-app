import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:bmprogresshud/bmprogresshud.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tai_chat_app/common/global_configs.dart';
import 'package:tai_chat_app/common/helpers.dart';
import 'package:tai_chat_app/firebase_options.dart';
import 'package:tai_chat_app/generated/locales.g.dart';
import 'package:tai_chat_app/get_it.dart';
import 'package:get/get.dart';
import 'package:tai_chat_app/route_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    final currentLocale = Helpers.getCurrentLocale();
    Get.updateLocale(currentLocale);
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHud(
      isGlobalHud: true,
      child: GetMaterialApp(
        title: GlobalConfigs.kAppName,
        locale: Get.locale,
        translationsKeys: AppTranslation.translations,
        supportedLocales: GlobalConfigs.supportedLanguage,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        fallbackLocale: const Locale('vi'),
        theme: ThemeData(
          fontFamily: 'Roboto',
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.key,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: '/',
      ),
    );
  }
}
