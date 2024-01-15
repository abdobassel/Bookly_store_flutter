import 'package:book_store/components.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  CustomSearchField({super.key});
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: DefaultTextForm(
        onchange: (value) {
          print(value);
        },
        controller: searchController,
        labeltext: 'Search...',
        type: TextInputType.text,
        suffixIcon: Icons.search,
      ),
    );
  }
}
