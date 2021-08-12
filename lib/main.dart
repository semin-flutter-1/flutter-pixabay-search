import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay_search/repository/pixabay_repository.dart';
import 'package:pixabay_search/ui/home_page.dart';
import 'package:pixabay_search/ui/home_view_model.dart';

void main() {
  Get.put(HomeViewModel(PixabayRepository()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
