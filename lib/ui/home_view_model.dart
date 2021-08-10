import 'package:pixabay_search/model/image_info.dart';
import 'package:pixabay_search/repository/pixabay_repository.dart';

class HomeViewModel {
  final PixabayRepository _repository;

  List<ImageInfo> _items = [];

  List<ImageInfo> get items => _items;

  HomeViewModel(this._repository);




  Future fetch({String? query}) async {
    _items = await _repository.fetch(query: query);
  }
}