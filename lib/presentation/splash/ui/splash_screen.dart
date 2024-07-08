import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muze_innovation/presentation/splash/controller/splash_controller.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(splashControllerProvider, (prev, next) {
      next.whenData((value) {
        if (value) {
          context.go('/');
        } else {
          context.go('/auth');
        }
      });
    });

    return Container(
      color: Colors.white,
      child: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}
