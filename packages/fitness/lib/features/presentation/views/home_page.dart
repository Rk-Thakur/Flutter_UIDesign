import 'package:flutter/material.dart';
import 'package:Fitness_App_Components/fitness_component.dart';

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
