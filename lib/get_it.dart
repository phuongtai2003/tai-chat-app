import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tai_chat_app/common/storage/app_prefs.dart';
import 'package:tai_chat_app/get_it.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initConfig',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $initConfig(getIt);

@module
abstract class AppModule {
  @preResolve
  Future<AppPrefs> get appPref => AppPrefs.instance();
}
