import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muze_innovation/presentation/thump_up/controller/thump_up_controller.dart';

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
        ref.read(thumpUpControllerProvider(id).notifier).update(id);
      },
      child: Icon(
        Icons.thumb_up,
        color: ref.watch(thumpUpControllerProvider(id))
            ? Theme.of(context).primaryColor
            : Colors.grey,
      ),
    );
  }
}
