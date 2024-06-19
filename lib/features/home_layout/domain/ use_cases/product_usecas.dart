import 'package:dartz/dartz.dart';
import 'package:slash/core/error/failures.dart';
import 'package:slash/features/home_layout/domain/entities/product_entity.dart';
import 'package:slash/features/home_layout/domain/repository.dart';

class GetProductsUseCase {
  final IProductRepository repository;

  GetProductsUseCase(this.repository);

  Future<Either<Failure, List<ProductEntity>>> call(String category) async {
    return await repository.getAllProducts(category);
  }
}