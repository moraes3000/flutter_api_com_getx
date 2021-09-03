import 'package:api_com_getx/models/giphy_model.dart';
import 'package:get/get.dart';

import 'package:api_com_getx/repository/giphy_repository.dart';

class HomePageController extends GetxController
    with StateMixin<List<GiphyModel>> {
  final GiphyRepository _repository;
  // final gifs = <GiphyModel>[].obs;
  // final isLoading = false.obs;

  HomePageController(
    this._repository,
  );
  @override
  void onInit() {
    super.onInit();
    _repository.findAll().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      print(err);
      change(null, status: RxStatus.error('Erro ao buscar gifs'));
    });
  }
}
