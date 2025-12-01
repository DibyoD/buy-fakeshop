import 'package:fakeshop_provider/models/categories.dart';
import 'package:fakeshop_provider/models/products.dart';
import 'package:fakeshop_provider/services/api_services.dart';
import 'package:flutter/foundation.dart';

class ProductProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Products> products = [];
  List<Categories> categories = [];

  getAllProducts() async {
    isLoading = true;
    notifyListeners();
    try {
      products = await ApiServices.allProducts();
    } catch (error) {
      print("Error: ${error.toString()}");
    }
    isLoading = false;
    notifyListeners();
  }

  getAllCategories() async {
    isLoading = true;
    notifyListeners();
    try {
      categories = await ApiServices.allCategories();
    } catch (error) {
      print("Error: ${error.toString()}");
    }
    isLoading = false;
    notifyListeners();
  }
}
