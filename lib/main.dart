import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:portfolio_flutter/app.dart';
import 'package:portfolio_flutter/core/bootstrap/bootstrap.dart';
import 'package:portfolio_flutter/core/helpers/bloc_obs.dart';
import 'package:portfolio_flutter/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Bootstrap.init();
  Bloc.observer = sl<MyBlocObserver>();
  usePathUrlStrategy();
  runApp(const MyPortfolio());
}
