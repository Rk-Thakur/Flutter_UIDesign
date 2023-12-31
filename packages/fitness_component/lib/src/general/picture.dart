// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class Picture extends StatelessWidget {
  const Picture({
    required this.source,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    super.key,
  });

  final String source;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture(
      AssetBytesLoader(source, packageName: 'Fitness_App_Resources'),
      width: width,
      height: height,
      fit: fit,
    );
  }
}
