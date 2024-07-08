import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muze_innovation/presentation/details/controller/details_controller.dart';
import 'package:muze_innovation/presentation/widget/drama_card_widget.dart';

class DetailsScreen extends ConsumerWidget {
  const DetailsScreen({
    super.key,
    this.id,
  });

  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Muze"),
      ),
      body: ref.watch(fetchDetailsProvider(id: id)).when(
            data: (data) => data != null
                ? SizedBox(
                    height: 350,
                    child: DramaCardWidget(
                      drama: data,
                      id: id,
                    ),
                  )
                : const Text("Went wrong something!!!"),
            error: (error, _) => Center(
              child: Text(error.toString()),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
