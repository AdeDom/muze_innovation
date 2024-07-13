import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muze_innovation/presentation/home/provider/home_provider.dart';
import 'package:muze_innovation/presentation/widget/drama_card_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Muze"),
        actions: [
          IconButton(
            onPressed: () => context.go('/sdui/profile_sdui.json'),
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => ref.refresh(fetchHomeProvider.future),
        child: ref.watch(fetchHomeProvider).when(
              data: (data) => ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  final id = data[index].id;
                  if (id == null) {
                    return Container();
                  }

                  return GestureDetector(
                    onTap: () => context.go("/details/$id"),
                    child: DramaCardWidget(
                      drama: data[index],
                      id: id.toString(),
                    ),
                  );
                },
              ),
              error: (error, _) => Center(
                child: Text(error.toString()),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
      ),
    );
  }
}
