// TFLITE -> image 추론

import 'package:flutter/services.dart';
import 'package:image/image.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class YoloDetection {
  List<String>? _lables;
  String lable(int index) => _lables![index];
  // 텐서플로우에서 제공하는 클래스
  // 모델을 로드하고 추론하는 클래스
  Interpreter? _interpreter;

  bool get isInit => _interpreter != null && _lables != null;

  Future<void> init() async {
    _interpreter = await Interpreter.fromAsset('assets/yolov8n.tflite');
    // label을 에셋에서 String type으로 불러올때 씀
    final labelStrings = await rootBundle.loadString('assets/labels.txt');
    _lables = labelStrings.split('\n');
  }

  // 추론
  void runInference() {
    if (!isInit) {
      throw Exception('The model must be initialized');
    }
    //1. image size : 640x640
    // final resizedImage = copyResize(
    //   image,
    //   width: 640,
    //   height: 640,
    // );
    // // 2. 이미지 픽셀 정규화 (RGB값을 0~1사이로 정규화)
    // final imageNormalized = List.generate(
    //   640,
    //   (y) => List.generate(
    //     640,
    //     (x) {
    //       final pixel = resizedImage.getPixel(x, y);
    //       return [pixel.rNormalized, pixel.gNormalized, pixel.bNormalized];
    //     },
    //   ),
    // );
    // 예측 결과 담는 배열 생성
    print(_interpreter!.getOutputTensor(0));
    //final output = [];
  }
}
