import 'package:flutter/material.dart';
import 'package:flutter_animation_app/animated_align_example.dart';
import 'package:flutter_animation_app/animated_container_align_example.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          AnimatedAlignExample(),
          AnimatedContainerAlignExample(),
        ],
      ),
    );
  }
}
