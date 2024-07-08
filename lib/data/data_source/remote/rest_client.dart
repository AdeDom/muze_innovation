import 'package:dio/dio.dart';
import 'package:muze_innovation/data/models/base_response.dart';
import 'package:muze_innovation/data/models/home/home_data.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://run.mocky.io/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('v3/951008cc-7888-4375-a510-f149c2584089')
  Future<BaseResponse<List<HomeData>>> fetchHome();
}
