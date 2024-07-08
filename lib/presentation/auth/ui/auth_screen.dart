import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muze_innovation/data/data_source/local/app/app_local_data_source.dart';
import 'package:muze_innovation/presentation/auth/controller/auth_controller.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Muze"),
      ),
      body: ProgressHUD(
        child: Builder(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      ref.watch(authFormProvider).displayName,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Display name',
                        ),
                        onChanged: (value) {
                          ref
                              .read(authFormProvider.notifier)
                              .setDisplayName(value);
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () async {
                        final displayName =
                            ref.read(authFormProvider).displayName;

                        if (displayName == "") {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please enter your display name.'),
                            ),
                          );
                          return;
                        }

                        final progress = ProgressHUD.of(context);
                        progress?.show();
                        ref
                            .read(appLocalDataSourceProvider)
                            .setDisplayName(displayName: displayName);
                        await Future.delayed(const Duration(seconds: 2));
                        progress?.dismiss();

                        context.go('/');
                      },
                      child: const Text("Submit"),
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
