// import 'package:final_tpm/login/loginService.dart';
// import 'package:flutter/material.dart';
//
// class LoginPage extends StatelessWidget {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextFormField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             TextFormField(
//               controller: _passwordController,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//               obscureText: true,
//             ),
//             ElevatedButton(
//               child: Text('Login'),
//               onPressed: () async {
//                 try {
//                   final result = await LoginService.login(
//                     _emailController.text,
//                     _passwordController.text,
//                   );
//                   if (result['success']) {
//                     // Jika login berhasil, navigasi ke halaman utama
//                     Navigator.pushReplacementNamed(context, '/home', arguments: result['user']);
//                   } else {
//                     // Jika login gagal, tampilkan pesan error
//                     showDialog(
//                       context: context,
//                       builder: (context) => AlertDialog(
//                         title: Text('Error'),
//                         content: Text(result['message']),
//                         actions: <Widget>[
//                           ElevatedButton(
//                             child: Text('OK'),
//                             onPressed: () => Navigator.of(context).pop(),
//                           ),
//                         ],
//                       ),
//                     );
//                   }
//                 } catch (e) {
//                   print(e);
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
