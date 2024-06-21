import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slash/features/home_layout/data/data_source/local_data_source/local_data_source.dart';
import 'package:slash/features/home_layout/data/data_source/reomt_data_source/remot_data_source.dart';
import 'package:slash/features/home_layout/domain/repository.dart';
import 'package:slash/features/home_layout/presntation/bloc_logic/product_cupit/product_bloc.dart';

import '../../features/home_layout/data/repositories/ProductRepository.dart';
import '../../features/home_layout/domain/ use_cases/product_usecas.dart';
import '../app/connectivity_controller.dart';


final sl = GetIt.instance;

Future<void> init() async {

// data source
  sl.registerLazySingleton<ProductRemoteDataSource>(
          () => ProductDummyDataSourceImpl());
  sl.registerLazySingleton<ProductLocalDataSource>(
          () => ProductLocalDataSourceImpl(sharedPreferences: sl()));

//! Core

  sl.registerLazySingleton<ConnectivityService>(() => ConnectivityService());
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);


// Repository

  sl.registerLazySingleton<IProductRepository>(() => ProductRepositoryImpl(
      remoteDataSource: sl(), localDataSource: sl(), connectivityService: sl()));
// Usecases

  sl.registerLazySingleton(() => GetProductsUseCase(sl()));
// Bloc

  sl.registerFactory(() => ProductBloc(getProducts: sl()));

}