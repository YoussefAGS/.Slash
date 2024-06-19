import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:slash/core/error/exceptions.dart';
import 'package:slash/features/home_layout/data/models/product_model.dart';

abstract class ProductLocalDataSource {
  Future<List<ProductModel>> getCachedProducts(String categoryName);
  Future<void> cacheProducts(List<ProductModel> productModels,String categoryName);
}


class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  final SharedPreferences sharedPreferences;

  ProductLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheProducts(List<ProductModel> productModels,String categoryName) {
    List<Map<String, dynamic>> productModelsToJson = productModels
        .map<Map<String, dynamic>>((productModel) => productModel.toJson())
        .toList();
    sharedPreferences.setString(categoryName, json.encode(productModelsToJson));
    return Future.value();
  }

  @override
  Future<List<ProductModel>> getCachedProducts(String categoryName) {
    final jsonString = sharedPreferences.getString(categoryName);
    if (jsonString != null) {
      List<dynamic> decodeJsonData = json.decode(jsonString);
      List<ProductModel> jsonToProductModels = decodeJsonData
          .map<ProductModel>((jsonProductModel) => ProductModel.fromJson(jsonProductModel))
          .toList();
      return Future.value(jsonToProductModels);
    } else {
      throw EmptyCacheException();
    }
  }
}
