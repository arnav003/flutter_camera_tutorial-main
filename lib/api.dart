import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:convert' as io;

String uploadUrl = "http://http://127.0.0.1:5000/api";
String downloadUrl = "http://http://127.0.0.1:5000/result";

Future getData(String url) async {
  var dio = Dio();
  var response = await dio.get(url);
  return io.jsonDecode(response.data);
}

uploadImage(File imageFile, String url) async {
  var dio = Dio();
  final imageBytes = await imageFile.readAsBytes();
  String base64Image = io.base64Encode(imageBytes);
  print("hello");
  Response response = await dio.post(url, data: base64Image);
  print(response.statusCode);
}
