import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/core/app/bloc_observer.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
  Bloc.observer=AppBlocObserver();
}
