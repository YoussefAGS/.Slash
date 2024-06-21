import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/core/app/bloc_observer.dart';
import 'package:slash/slash_app.dart';
import 'core/di/injection_container.dart' as di;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await  di.init();
  Bloc.observer=AppBlocObserver();
  runApp(const SlashApp());
}
