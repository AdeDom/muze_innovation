import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muze_innovation/data/data_source/data_source_provider.dart';
import 'package:muze_innovation/data/models/home/home_response.dart';

abstract class DramaRemoteDataSource {
  Future<HomeResponse> fetchHome();
}

class DramaRemoteDataSourceImpl extends DramaRemoteDataSource {
  final Dio dio;

  DramaRemoteDataSourceImpl({
    required this.dio,
  });

  @override
  Future<HomeResponse> fetchHome() async {
    final response = await dio.get("/v3/951008cc-7888-4375-a510-f149c2584089");
    return HomeResponse.fromJson(response.data);
  }
}

final dramaRemoteDataSourceProvider = Provider<DramaRemoteDataSource>((ref) {
  return DramaRemoteDataSourceImpl(
    dio: ref.watch(dioProvider),
  );
});
