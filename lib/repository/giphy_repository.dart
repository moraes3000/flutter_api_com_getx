import 'package:api_com_getx/models/giphy_model.dart';
import 'package:get/get.dart';

import 'package:get/get_connect/connect.dart';

class GiphyRepository extends GetConnect {
  Future<List<GiphyModel>> findAll() async {
    final response = await get<List<GiphyModel>>(
      'http://api.giphy.com/v1/gifs/trending',
      query: {'api_key': 'U4orxyXLercCw99pzLj1WIfmTORvuNgu'},
      decoder: (response) {
        return response['data']
                ?.map<GiphyModel>(
                  (d) => GiphyModel(
                    d['id'],
                    d['images']['downsized']['url'],
                  ),
                )
                ?.toList() ??
            [];
      },
    );

    if (response.hasError) {
      throw Exception(response.statusText);
    }

    return response.body;
  }
}
