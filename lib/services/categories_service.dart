import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

// ignore: camel_case_types
class catrgoriesService {
  Future<List<ProductModel>> getcatrgoriesService(String categoryName) async {

    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> producList = [];
    for (int i = 0; i < data.length; i++) {
      producList.add(ProductModel.fromJson(data[i]));
    }
    return producList;
  }
}
