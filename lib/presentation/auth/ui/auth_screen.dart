import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muze_innovation/presentation/auth/controller/auth_controller.dart';
import 'package:toast/toast.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ToastContext().init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Muze"),
      ),
      body: Stack(
        children: [
          Column(
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
                        final isResult =
                            await ref.read(authFormProvider.notifier).submit();
                        if (isResult) {
                          context.go('/');
                        }
                      },
                      child: const Text("Submit"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (ref.watch(authControllerProvider) ==
              const AuthState.loading()) ...[
            const Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ],
      ),
    );
  }
}
