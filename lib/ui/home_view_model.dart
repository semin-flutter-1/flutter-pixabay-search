import 'package:flutter/foundation.dart';
import 'package:pixabay_search/model/image_result.dart';
import 'package:pixabay_search/repository/pixabay_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final PixabayRepository _repository;

  List<ImageResult> _items = [];

  List<ImageResult> get items => _items;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  HomeViewModel(this._repository);

  Future fetch({String? query}) async {
    _items = await _repository.fetch(query: query);
    notifyListeners();
  }
}