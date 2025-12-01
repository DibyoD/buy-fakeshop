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

  // // ---------- AUTH ----------
  // static const String login = "$baseUrl/auth/login"; // POST
  // static const String register = "$baseUrl/users"; // POST
  //
  // // ---------- PRODUCTS ----------
  // static const String products = "$baseUrl/products"; // GET
  // static String productById(int id) => "$baseUrl/products/$id";
  //
  // static const String categories = "$baseUrl/products/categories"; // GET
  // static String productsByCategory(String category) =>
  //     "$baseUrl/products/category/$category";
  //
  // // ---------- CART ----------
  // static const String carts = "$baseUrl/carts"; // GET/POST
  // static String cartByUser(int userId) => "$baseUrl/carts/user/$userId";
  //
  // // ---------- USERS ----------
  // static const String users = "$baseUrl/users"; // GET
  // static String userById(int id) => "$baseUrl/users/$id";
  //
  // // ---------- SEARCH (Fake implementation) ----------
  // /// FakeStore API does not have search.
  // /// You must filter manually in your providers.
  // static const String search = "$baseUrl/products";
}
