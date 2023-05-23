import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:tumor_detection/core/widgets/my_asset_image.dart';

class TestModel extends StatefulWidget {
  const TestModel({super.key});

  @override
  State<TestModel> createState() => _TestModelState();
}

class _TestModelState extends State<TestModel> {
  List? _outputs;
  File? image;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  Future loadModel() async {
    Tflite.close();
    try {
      var response = await Tflite.loadModel(
          model: 'assets/grade.tflite', labels: 'assets/labels.txt');
      if (kDebugMode) {
        print(response);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _loading
            ? Container(
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              )
            : SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    image == null
                        ? const SizedBox(
                            width: 300,
                            child: MyAssetImage(
                              image: 'l10.png',
                            ))
                        : SizedBox(
                            height: 250,
                            width: 200,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.file(image!)),
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    _outputs != null
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: Text(
                                _outputs![0]['label'].toString().substring(1),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  background: Paint()..color = Colors.white,
                                ),
                              ),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
        TextButton(
          onPressed: pickImage,
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.teal[100],
            child: const Text(
              'Select an image',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future pickImage() async {
    var saveimg = await ImagePicker().getImage(source: ImageSource.gallery);
    if (saveimg == null) return null;

    setState(() {
      _loading = true;
      image = File(saveimg.path);
    });
    Image.file(image!);
    classifyImage(image!);
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      threshold: 0.0,
      imageMean: 1.0,
      imageStd: 1.0,
      asynch: true,
    );
    setState(() {
      _loading = false;
      _outputs = output!;
    });
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }
}
