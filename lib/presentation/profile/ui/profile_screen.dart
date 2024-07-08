import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muze_innovation/presentation/profile/controller/profile_controller.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Muze"),
      ),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child:
                            Image.network(ref.watch(getImageProfileProvider)),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(ref.watch(getDisplayNameProvider)),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () async {
                        await ref
                            .read(profileControllerProvider.notifier)
                            .logout();
                        context.go("/auth");
                      },
                      child: const Text("Logout"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (ref.watch(profileControllerProvider) ==
              const ProfileState.loading()) ...[
            const Center(
              child: CircularProgressIndicator(),
            )
          ],
        ],
      ),
    );
  }
}
