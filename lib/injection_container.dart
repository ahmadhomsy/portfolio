import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'package:portfolio_flutter/core/helpers/bloc_obs.dart';

final GetIt sl = GetIt.instance;
Future<void> init() async {
  sl
    ..registerLazySingleton<Logger>(Logger.new)
    ..registerLazySingleton<MyBlocObserver>(
      () => MyBlocObserver(sl()),
    );
}
