import 'package:muze_innovation/data/repositories/drama/drama_repository.dart';
import 'package:muze_innovation/domain/models/home/home_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
Future<List<HomeModel>> fetchHome(FetchHomeRef ref) {
  return ref.watch(dramaRepositoryProvider).fetchHome();
}
