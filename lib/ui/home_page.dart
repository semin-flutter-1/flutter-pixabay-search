import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pixabay_search/model/image_info.dart' as imageInfo;
import 'package:pixabay_search/ui/widget/image_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();

  bool isLoading = false;

  List<imageInfo.ImageInfo> items = [];

  final baseUrl = 'https://pixabay.com/api/';

  Future<List<imageInfo.ImageInfo>> fetch({String? query}) async {
    final url = Uri.parse(
        '$baseUrl?key=17828481-17c071c7f8eadf406822fada3&q=${query ?? 'iPhone'}&image_type=photo');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      final Iterable hits = jsonResponse['hits'];

      return hits.map((e) => imageInfo.ImageInfo.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return [];
  }

  @override
  void initState() {
    super.initState();

    _fetch();
  }

  Future _fetch({String? query}) async {
    setState(() {
      isLoading = true;
    });

    items = await fetch(query: query);

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
                    itemCount: items.length,
                    itemBuilder: (_, index) {
                      return ImageItem(items[index]);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
