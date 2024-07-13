import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muze_innovation/presentation/sdui/providers/sdui_providers.dart';
import 'package:muze_innovation/presentation/sdui/ui/sdui_widget.dart';

class SduiScreen extends ConsumerWidget {
  const SduiScreen({
    super.key,
    this.assetsJson,
  });

  final String? assetsJson;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sdui = ref.watch(fetchSduiProvider(data: assetsJson));
    return sdui.when(
      data: (data) {
        return SduiWidget(sdui: data);
      },
      error: (error, _) {
        return const Center(
          child: Text("Went wrong something!!!"),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
