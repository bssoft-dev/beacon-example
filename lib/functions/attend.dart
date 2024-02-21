import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future urlRequest(context) async {
  String attendanceUrl = "http://test-api.bs-soft.co.kr/asdfs/adfds";

  final response = await http.get(Uri.parse(attendanceUrl));

  if (response.statusCode == 200) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("출근에 성공했습니다."),
      ),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("출근에 실패했습니다."),
      ),
    );
  }
}
