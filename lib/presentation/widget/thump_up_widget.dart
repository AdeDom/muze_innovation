import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muze_innovation/data/data_source/local/app/app_local_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'thump_up_widget.g.dart';

class ThumpUpWidget extends ConsumerWidget {
  const ThumpUpWidget({
    super.key,
    this.id,
  });

  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(updateThumpUpProvider(id).notifier).update(id);
      },
      child: Icon(
        Icons.thumb_up,
        color: ref.watch(updateThumpUpProvider(id))
            ? Theme.of(context).primaryColor
            : Colors.grey,
      ),
    );
  }
}

@riverpod
class UpdateThumpUp extends _$UpdateThumpUp {
  @override
  bool build(String? id) {
    final appLocalDataSource = ref.watch(appLocalDataSourceProvider);
    final dramaIds = appLocalDataSource.getDramaIds();
    final isThumpUp = dramaIds
            ?.where(
              (element) => element == id,
            )
            .firstOrNull !=
        null;
    return isThumpUp;
  }

  void update(String? id) {
    if (id == null) {
      return;
    }

    final appLocalDataSource = ref.read(appLocalDataSourceProvider);
    final dramaIds = appLocalDataSource.getDramaIds();
    final isDramaId = dramaIds?.where((element) => element == id).firstOrNull;

    if (dramaIds != null) {
      if (isDramaId != null) {
        final list = dramaIds;
        list.remove(id);
        appLocalDataSource.setDramaIds(dramaIds: list);
        state = false;
      } else {
        final list = dramaIds;
        list.add(id);
        appLocalDataSource.setDramaIds(dramaIds: list);
        state = true;
      }
    } else {
      final list = [id];
      appLocalDataSource.setDramaIds(dramaIds: list);
      state = true;
    }
  }
}
