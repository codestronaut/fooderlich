import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
    this.imageProvider,
    this.imageRadius = 20.0,
  }) : super(key: key);

  final double imageRadius;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: imageRadius,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: imageRadius - 4,
        backgroundImage: imageProvider,
      ),
    );
  }
}
