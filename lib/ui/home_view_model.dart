import 'package:get/get.dart';
import 'package:pixabay_search/model/image_result.dart';
import 'package:pixabay_search/repository/pixabay_repository.dart';

class HomeViewModel extends GetxController {
  final PixabayRepository _repository;

  final RxList _items = <ImageResult>[].obs;

  RxList get items => _items;

  final RxBool _isLoading = false.obs;

  RxBool get isLoading => _isLoading;

  HomeViewModel(this._repository);

  Future fetch({String? query}) async {
    _isLoading.value = true;
    _items.value = await _repository.fetch(query: query);
    _isLoading.value = false;
  }
}
