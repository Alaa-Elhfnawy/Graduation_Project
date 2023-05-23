import 'package:flutter/material.dart';

class MyAssetImage extends StatelessWidget {
  final String image;
  final BoxFit fit;

  const MyAssetImage({
    Key? key,
    required this.image,
    this.fit=BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$image',
      fit: fit,
      width: double.infinity,
    );
  }
}