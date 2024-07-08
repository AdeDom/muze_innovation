import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muze_innovation/data/data_source/remote/rest_client.dart';
import 'package:muze_innovation/domain/models/home/home_model.dart';
import 'package:muze_innovation/utils/extensions/string_extension.dart';

abstract class DramaRepository {
  Future<List<HomeModel>> fetchHome();

  Future<HomeModel?> fetchDetails(int id);
}

class DramaRepositoryImpl extends DramaRepository {
  final RestClient restClient;

  DramaRepositoryImpl({
    required this.restClient,
  });

  @override
  Future<List<HomeModel>> fetchHome() async {
    final response = await restClient.fetchHome();
    if (response.status.isSuccess) {
      final list = response.data?.map((e) {
            return HomeModel(
              id: e.id,
              title: e.title ?? "Unknown",
              description: e.description ?? "Unknown",
              image: e.image ??
                  "https://www.muze.co.th/wp-content/uploads/2018/06/Logo.png",
            );
          }).toList() ??
          [];
      list.shuffle();
      return list;
    } else {
      return [];
    }
  }

  @override
  Future<HomeModel?> fetchDetails(int id) async {
    final response = await restClient.fetchHome();
    if (response.status.isSuccess) {
      return response.data
          ?.map((e) {
            return HomeModel(
              id: e.id,
              title: e.title ?? "Unknown",
              description: e.description ?? "Unknown",
              image: e.image ??
                  "https://www.muze.co.th/wp-content/uploads/2018/06/Logo.png",
            );
          })
          .where((element) => element.id == id)
          .toList()
          .firstOrNull;
    } else {
      return null;
    }
  }
}

final dramaRepositoryProvider = Provider<DramaRepository>((ref) {
  return DramaRepositoryImpl(
    restClient: RestClient(
      Dio(),
    ),
  );
});
