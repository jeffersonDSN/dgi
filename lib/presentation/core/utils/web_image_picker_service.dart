import 'dart:async';
import 'dart:html' as html;
import 'dart:typed_data';

import 'package:dgi/presentation/core/utils/abs_i_image_picker_service.dart';

class WebImagePickerService implements AbsIImagePickerService {
  @override
  Future<Map<String, dynamic>> pickImage() async {
    final html.FileUploadInputElement uploadInput =
        html.FileUploadInputElement();
    uploadInput.accept = 'image/*';
    uploadInput.click();

    final completer = Completer<Map<String, dynamic>>();

    uploadInput.onChange.listen((event) {
      if (uploadInput.files!.isNotEmpty) {
        final html.File file = uploadInput.files!.first;
        final reader = html.FileReader();

        reader.onLoadEnd.listen((event) {
          completer.complete({
            'data': reader.result as Uint8List,
            'name': file.name,
          });
        });

        reader.readAsArrayBuffer(file);
      }
    });

    return completer.future;
  }
}
