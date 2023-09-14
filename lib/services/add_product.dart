import '../helper/api.dart';

import '../models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required double price,
      required String descrption,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        // ignore: missing_required_param
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': descrption,
      'image': image,
      'category': category,
    });

    return ProductModel.fromJson(data);
  }
}
