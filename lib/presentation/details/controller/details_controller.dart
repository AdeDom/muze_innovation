import 'package:muze_innovation/data/repositories/drama/drama_repository.dart';
import 'package:muze_innovation/domain/models/home/home_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'details_controller.g.dart';

@riverpod
Future<HomeModel?> fetchDetails(
  FetchDetailsRef ref, {
  String? id,
}) {
  if (id == null) {
    return Future.value(null);
  }

  return ref.watch(dramaRepositoryProvider).fetchDetails(int.parse(id));
}
