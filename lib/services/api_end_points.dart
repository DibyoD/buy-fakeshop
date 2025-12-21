/// Central place for all API endpoints.
/// Keeps your project clean & scalable.
///
/// Usage:
/// ApiEndpoints.products
/// ApiEndpoints.productById(5)
/// ApiEndpoints.login

class ApiEndpoints {
  // Base URL
  static const String baseUrl = "https://api.escuelajs.co/api/v1";

  // ---------- AUTH ----------
  static const String login = '$baseUrl/auth/login';
  static const String userProfile = '$baseUrl/auth/profile';

  // ---------- Products ----------
  static const allProducts = '$baseUrl/products';
  static const allCategories = '$baseUrl/categories';
  static String productDetails(int id) => '$baseUrl/products/$id';
}
