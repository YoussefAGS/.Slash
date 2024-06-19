import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:slash/core/error/failures.dart';
import 'package:slash/core/strings/failures.dart';
import 'package:slash/features/home_layout/domain/%20use_cases/product_usecas.dart';
import 'package:slash/features/home_layout/domain/entities/product_entity.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductsUseCase getProducts;

  ProductBloc({
    required this.getProducts,
  }) : super(ProductInitial()) {
    on<ProductEvent>((event, emit) async {
      if (event is GetProductsEvent) {
        emit(ProductLoading());


        final bestSelling = await getProducts('bestSelling');
        final newArrival = await getProducts('newArrival');
        final recommendedForYou = await getProducts('recommendedForYou');


        emit(_mapFailureOrProductsToState(
          bestSelling,
          newArrival,
          recommendedForYou,
        ));      }
    });
  }

  ProductState _mapFailureOrProductsToState(
      Either<Failure, List<ProductEntity>> bestSellingEither,
      Either<Failure, List<ProductEntity>> newArrivalEither,
      Either<Failure, List<ProductEntity>> recommendedForYouEither,
      ) {
    if (bestSellingEither.isLeft() ||
        newArrivalEither.isLeft() ||
        recommendedForYouEither.isLeft()) {
      return ProductError(
        message: _mapFailureToMessage(bestSellingEither.swap().getOrElse(() => ServerFailure())),
      );
    }

    final bestSelling = bestSellingEither.getOrElse(() => []);
    final newArrival = newArrivalEither.getOrElse(() => []);
    final recommendedForYou = recommendedForYouEither.getOrElse(() => []);

    return ProductLoaded(
      bestSelling: bestSelling,
      newArrival: newArrival,
      recommendedForYou: recommendedForYou,
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case EmptyCacheFailure:
        return EMPTY_CACHE_FAILURE_MESSAGE;
      case OfflineFailure:
        return OFFLINE_FAILURE_MESSAGE;
      default:
        return "Unexpected Error, Please try again later.";
    }
  }

}
