import 'package:egycal/features/search/presentation/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchField extends StatelessWidget {
  final SearchControllerr searchController = Get.find();

  SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: searchController.updateSearchText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        filled: true,
        fillColor: Colors.grey.shade200,
        hintText: 'Search food',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none
        ),
      ),
    );
  }
}
