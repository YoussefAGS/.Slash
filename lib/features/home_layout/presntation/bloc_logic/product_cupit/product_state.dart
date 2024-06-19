part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<ProductEntity> bestSelling;
  final List<ProductEntity> newArrival;
  final List<ProductEntity> recommendedForYou;

  const ProductLoaded({
    required this.bestSelling,
    required this.newArrival,
    required this.recommendedForYou,
  });

  @override
  List<Object> get props => [bestSelling, newArrival, recommendedForYou];
}

class ProductError extends ProductState {
  final String message;

  const ProductError( {required this.message});

  @override
  List<Object> get props => [message];
}
