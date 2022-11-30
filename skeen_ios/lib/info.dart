import 'dart:io';
//import 'package:camera/camera.dart';
import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imageclassification/classifier.dart';
// import 'package:imageclassification/classifier_float.dart';
import 'package:imageclassification/classifier_quant.dart';
import 'package:logger/logger.dart';
//import 'package:path/path.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'result.dart';
import 'package:get/get.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Classification',
//       theme: ThemeData(
//         primarySwatch: Colors.orange,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Classifier _classifier;

  var logger = Logger();

  File? _image;
  final picker = ImagePicker();

  Image? _imageWidget;

  img.Image? fox;

  Category? category;

  @override
  void initState() {
    super.initState();
    _classifier = ClassifierQuant();
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile!.path);
      _imageWidget = Image.file(_image!);

      _predict();
    });
  }

  void _predict() async {
    img.Image imageInput = img.decodeImage(_image!.readAsBytesSync())!;
    var pred = _classifier.predict(imageInput);

    setState(() {
      this.category = pred;
    });
  }

  bool checkNull = true;

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Skin Diagnostic', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          
          Center(
            child: _image == null
                ? Container(
                    margin: const EdgeInsets.only(top: 300),
                    child: const Opacity(
                      opacity: 0.3,
                      child: Center(
                        child: Text(
                          "No image selected.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  )
                : Container(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height / 3),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: _imageWidget,
                  ),
          ),
          SizedBox(
            height: 36,
          ),
          SizedBox(
            height: 8,
          ),
          Center(
              child: _image == null
                  ? null
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFE9E3)),
                      onPressed: () {
                        Get.to(Result(), arguments: [category!.label,category!.score.toStringAsFixed(3),_imageWidget]);
                      },
                      child: Text(
                        'Show Result',
                        style: TextStyle(fontSize: 15, color: Colors.orange),
                      ))),
          // Text(
          //   category != null
          //       ? 'Confidence: ${category!.score.toStringAsFixed(3)}'
          //       : '',
          //   style: TextStyle(fontSize: 16),
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        backgroundColor: Colors.orange,
        child: Icon(Icons.photo_album),
      ),
    );
    // floatingActionButton: FloatingActionButton(
    //   onPressed: getImage,
    //   tooltip: 'Pick Image',
    //   backgroundColor: Colors.orange,
    //   child: Icon(Icons.photo_album),
    // );
  }
}
