import 'package:muze_innovation/data/data_source/local/app/app_local_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_controller.g.dart';

@riverpod
class SplashController extends _$SplashController {
  @override
  Future<bool> build() async {
    await Future.delayed(const Duration(seconds: 1));

    final appLocalDataSource = ref.watch(appLocalDataSourceProvider);
    return appLocalDataSource.getDisplayName()?.isNotEmpty == true;
  }
}
