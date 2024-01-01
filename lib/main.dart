import 'package:book_store/apiDio/apidio.dart';
import 'package:flutter/material.dart';

void main() {
  DioHelper.init();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
