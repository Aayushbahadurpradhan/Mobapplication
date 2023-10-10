import 'package:application_one/app/routes/app_route.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(
                        context, AppRoute.arithmeticRoute);
                  },
                  child: const Text('Arithmetic'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.randomRoute);
                  },
                  child: const Text('random'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.containerRoute);
                  },
                  child: const Text('container'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.imageRoutes);
                  },
                  child: const Text('image'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
