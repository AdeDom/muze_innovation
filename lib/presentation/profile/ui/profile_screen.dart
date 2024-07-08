import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muze_innovation/data/data_source/local/app/app_local_data_source.dart';
import 'package:muze_innovation/presentation/profile/provider/profile_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Muze"),
      ),
      body: ProgressHUD(
        child: Builder(builder: (context) {
          return Row(
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
                        final progress = ProgressHUD.of(context);
                        progress?.show();

                        ref.read(appLocalDataSourceProvider).clear();
                        await Future.delayed(const Duration(seconds: 2));

                        progress?.dismiss();

                        context.go("/auth");
                      },
                      child: const Text("Logout"),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
