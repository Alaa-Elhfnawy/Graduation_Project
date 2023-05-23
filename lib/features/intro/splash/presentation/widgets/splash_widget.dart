import 'package:flutter/material.dart';

import '../../../../../core/widgets/my_asset_image.dart';


class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: double.infinity,
      width: double.infinity,
      child: MyAssetImage(image: 'logo2.png',),
    );
  }
}
