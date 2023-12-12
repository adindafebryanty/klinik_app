import 'package:flutter/material.dart';
import 'package:klinik_app/helpers/user_info.dart';
import 'package:klinik_app/ui/login.dart';
import 'package:klinik_app/ui/beranda.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await UserInfo().getToken();
  print(token);
  runApp(MaterialApp (
    title: "Material App",
    debugShowCheckedModeBanner: false,
    home: token == null ? Login() : Beranda(),
  ));
}