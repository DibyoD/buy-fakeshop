import 'dart:convert';

import 'package:fakeshop_provider/models/categories.dart';
import 'package:fakeshop_provider/models/products.dart';
import 'package:fakeshop_provider/models/user.dart';
import 'package:fakeshop_provider/services/api_end_points.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(ApiEndpoints.login),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"email": email, "password": password}),
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Login failed: ${response.body}");
    }
  }

  static Future<User> userProfile() async {
    final storage = FlutterSecureStorage();
    final token = await storage.read(key: "TOKEN");

    final response = await http.get(
      Uri.parse(ApiEndpoints.userProfile),
      headers: {"Authorization": "Bearer $token"},
    );

    if (response.statusCode >= 200 && response.statusCode <= 300) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch profile: ${response.body}');
    }
  }

  static Future<List<Products>> allProducts() async {
    final response = await http.get(Uri.parse(ApiEndpoints.allProducts));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Products.fromJson(json)).toList();
    } else {
      throw Exception("Products failed: ${response.body}");
    }
  }

  static Future<List<Categories>> allCategories() async {
    final response = await http.get(Uri.parse(ApiEndpoints.allCategories));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Categories.fromJson(json)).toList();
    } else {
      throw Exception("Categories failed: ${response.body}");
    }
  }
}
