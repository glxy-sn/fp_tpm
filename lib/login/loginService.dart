// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class LoginService {
//   static const String _baseUrl = 'http://localhost:8080/api';
//
//   static Future<Map<String, dynamic>> login(String email, String password) async {
//     final response = await http.post(
//       '$_baseUrl/login.php',
//       body: {'email': email, 'password': password},
//     );
//
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception('Gagal melakukan login');
//     }
//   }
// }
