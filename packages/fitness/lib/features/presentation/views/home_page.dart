import 'package:fitness_components/fitness_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Picture(
              source: Asset.images.men,
            ),
          ],
        ),
      ),
    );
  }
}
