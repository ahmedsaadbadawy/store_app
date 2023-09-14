import 'package:store_app/helper/api.dart';

class AllCategoriesServise {
  Future<List> getAllCategories() async {

    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
