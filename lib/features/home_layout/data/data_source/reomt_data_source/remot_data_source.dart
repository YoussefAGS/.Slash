import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:slash/features/home_layout/data/models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> fetchProducts(String category);
}

const baseRoot = "assets/dummyData.json";

class ProductDummyDataSourceImpl implements ProductRemoteDataSource {

  @override
  Future<List<ProductModel>> fetchProducts(String category) async {
    final String response = await rootBundle.loadString(baseRoot);
    final data = await json.decode(response);
    return (data[category] as List).map((i) => ProductModel.fromJson(i)).toList();
  }

}
