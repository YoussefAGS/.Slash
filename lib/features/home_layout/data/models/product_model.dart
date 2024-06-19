import 'package:slash/features/home_layout/domain/entities/product_entity.dart';

class ProductModel  extends ProductEntity{
  final int id;
  final String name;
  final double price;
  final String image;

  const ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  }):super(id: id, name: name, price: price, image: image);

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'image': image,
    };
  }
}
