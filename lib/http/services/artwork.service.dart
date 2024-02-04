import 'package:cityscope_task/http/http.dart';
import 'package:cityscope_task/pages/home/model/artwork_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

final artWorkServiceProvider = Provider((ref) => ArtWorkService());

class ArtWorkService {
  Future<ArtWorkList?> getArtWorkList({int limit = 20, int pageNo = 1}) async {
    try {
      final response = await Http.artworkEndpoint.get(
        '/artworks',
        queryParameters: {
          'limit': limit,
          'page': pageNo,
        },
      );
      ArtWorkList dataList = ArtWorkList.fromJson(response.data);

      return dataList;
      //print(dataList);
    } catch (e) {
      rethrow;
    }
  }

  downloadArtWorkImage({required String url, required int id}) async {
    try {
      String path = '${(await getDownloadsDirectory())!.path}/artwork/$id.jpg';
      await Dio().download(
        url,
        path,
      );
    } catch (e) {
      // print(e);
    }
  }
}
