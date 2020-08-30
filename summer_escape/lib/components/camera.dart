import 'package:flutter/material.dart';
import 'package:summer_escape/components/camera_details.dart';
import 'package:tflite/tflite.dart'; //tflite
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

List<String> checklist = [
  'Cellphone',
  'Hat',
  'Neck Pillow',
  'Snack',
  'Sneakers',
  'Sunscreen',
  'Toothbrush',
  'Towel',
  'T-Shirt',
];

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  double textSize = 20;
  String albumName = 'Media';

  @override
  void initState() {
    super.initState();
    _takePhoto();
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.transparent);
  }

  void _takePhoto() async {
//    final _picker = ImagePicker();
//    PickedFile pickedFile = await _picker.getImage(source: ImageSource.camera);
//    final File file = File(pickedFile.path);
    ImagePicker.pickImage(source: ImageSource.camera)
        .then((File recordedImage) {
      if (recordedImage != null && recordedImage.path != null) {
        GallerySaver.saveImage(recordedImage.path, albumName: albumName)
            .then((bool success) {});
        //move to TFLite with savedImage
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TFLite(
                    recordedImage: recordedImage,
                  )),
        );
      }
    });
  }
}

//TODO: TFLite - pass the image to TFLite to classify and then move to the information page

class TFLite extends StatefulWidget {
  final File recordedImage;
  TFLite({Key key, @required this.recordedImage}) : super(key: key);

  @override
  _TFLiteState createState() => _TFLiteState();
}

class _TFLiteState extends State<TFLite> {
  File _image;
  List _outputs;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = true;
    _image = widget.recordedImage;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
    classifyImage(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.transparent);
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 72,
    );
    setState(() {
      _loading = false;
      _outputs = output;
    });

    int index =
        -2; //index increases twice; one `forEach` and the other `index++`; so it should starts at -2

    checklist.forEach((item) {
      index++;
      if (item == _outputs[0]["label"]) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CameraDetailsPage(checklist[index]),
          ),
        );
      }
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }
}
