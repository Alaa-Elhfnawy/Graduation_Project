import 'package:flutter/material.dart';

import '../../core/const.dart';
import '../../core/widgets/my_asset_image.dart';

class PituitaryPage extends StatelessWidget {
  const PituitaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pituitary Tumor'),
      ),
      body:   const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '-What are pituitary tumors?',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 4,),
              Text(
                aboutPituitary,
                style: TextStyle(
                  fontSize: 17,
                  height: 0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4,),
              Text(
                '-Where can I find more information about pituitary tumors?',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 4,),
              Text(
                findPituitary,
                style: TextStyle(
                  fontSize: 17,
                  height: 0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4,),
              MyAssetImage(image: 'p1.png'),
              MyAssetImage(image: 'p2.png'),
            ],
          ),
        ),
      ),
    );
  }
}
