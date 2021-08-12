import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay_search/ui/home_view_model.dart';
import 'package:pixabay_search/ui/widget/image_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  final viewModel = Get.find<HomeViewModel>();

  @override
  void initState() {
    super.initState();

    viewModel.fetch();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('API test'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _textController,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  viewModel.fetch(query: _textController.text);
                },
                child: Text('검색'),
              )
            ],
          ),
          Obx(
            () => Expanded(
              child: viewModel.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: viewModel.items.length,
                      itemBuilder: (_, index) {
                        return ImageItem(viewModel.items[index]);
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
