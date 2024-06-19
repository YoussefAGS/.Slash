import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int id;
  final String name;
  final double price;
  final String image;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, price,image];
}