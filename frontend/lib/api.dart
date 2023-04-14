import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:flutter/cupertino.dart';

String uploadUrl = "http://http://127.0.0.1:5000/api";
String downloadUrl = "http://http://127.0.0.1:5000/result";

Future getData(String url) async {
  var dio = Dio();
  var response = await dio.get(url);
  return jsonDecode(response.data);
}

uploadImage(File imageFile, String url) async {
  var dio = Dio();
  try {
    List<int> imageBytes = await imageFile.readAsBytes();
    String base64Image = base64Encode(imageBytes);
    Response response = await Dio().post(url, data: base64Image);
    print(response);
  } catch (e) {
    print(e);
  }
}
