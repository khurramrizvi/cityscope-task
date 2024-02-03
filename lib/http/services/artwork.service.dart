import 'package:cityscope_task/http/http.dart';
import 'package:cityscope_task/pages/home/model/artwork_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artWorkServiceProvider = Provider((ref) => ArtWorkService());

class ArtWorkService {
  Future<ArtWorkList?> getArtWorkList({int limit = 40, int pageNo = 3}) async {
    try {
      final response = await Http.artworkEndpoint.get(
        '/artworks',
        queryParameters: {
          'limit': limit,
          'pageNo': pageNo,
        },
      );
      ArtWorkList dataList = ArtWorkList.fromJson(response.data);

      return dataList;
      //print(dataList);
    } catch (e) {
      rethrow;
    }
  }

  getArtWorkDetails({required id}) async {
    try {
      final response = await Http.artworkEndpoint.get(
        '/artworks/$id',
      );
    } catch (e) {}
  }
}
