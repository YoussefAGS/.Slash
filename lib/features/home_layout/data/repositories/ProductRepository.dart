

import 'package:dartz/dartz.dart';
import 'package:slash/core/error/exceptions.dart';
import 'package:slash/core/error/failures.dart';
import 'package:slash/features/home_layout/data/data_source/local_data_source/local_data_source.dart';
import 'package:slash/features/home_layout/data/data_source/reomt_data_source/remot_data_source.dart';
import 'package:slash/features/home_layout/domain/entities/product_entity.dart';
import 'package:slash/features/home_layout/domain/repository.dart';

import '../../../../core/app/connectivity_controller.dart';

class ProductRepositoryImpl implements IProductRepository {
  final ProductRemoteDataSource remoteDataSource;
  final ProductLocalDataSource localDataSource;
  final ConnectivityService connectivityService;
  ProductRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectivityService,
  });



  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts(String category) async {

    if (await connectivityService.isConnected()) {
      try {
        final remoteProducts = await remoteDataSource.fetchProducts(category);
        localDataSource.cacheProducts(remoteProducts,category);
        return Right(remoteProducts);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
    else {
      try {
        final localProducts = await localDataSource.getCachedProducts(category);
        return Right(localProducts);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }
}