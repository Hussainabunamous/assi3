import 'dart:ui';

import 'package:flutter/material.dart';

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Colors.green,
    Color(0xff00ff00),
    Colors.green[600],
    Colors.green[400]
  ],
).createShader(
  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);



