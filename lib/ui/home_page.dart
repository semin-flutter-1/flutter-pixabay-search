import 'package:flutter/material.dart';
import 'package:pixabay_search/model/image_info.dart' as imageInfo;
import 'package:pixabay_search/repository/fake_data_repository.dart';
import 'package:pixabay_search/repository/pixabay_repository.dart';
import 'package:pixabay_search/ui/home_view_model.dart';
import 'package:pixabay_search/ui/widget/image_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();

  final viewModel = HomeViewModel(PixabayRepository());

  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    _fetch();
  }

  Future _fetch({String? query}) async {
    setState(() {
      isLoading = true;
    });

    await viewModel.fetch(query: query);

    setState(() {
      isLoading = false;
    });
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
                  _fetch(query: _textController.text);
                },
                child: Text('검색'),
              )
            ],
          ),
          Expanded(
            child: isLoading
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
        ],
      ),
    );
  }
}
