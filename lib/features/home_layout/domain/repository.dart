import 'package:dartz/dartz.dart';
import 'package:slash/core/error/failures.dart';
import 'package:slash/features/home_layout/domain/entities/product_entity.dart';

abstract class IProductRepository {
  Future<Either<Failure, List<ProductEntity>>> getAllProducts(String category);
}