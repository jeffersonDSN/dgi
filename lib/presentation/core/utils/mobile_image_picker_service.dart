import 'package:dgi/presentation/core/utils/abs_i_image_picker_service.dart';

class MobileImagePickerService implements AbsIImagePickerService {
  @override
  Future<Map<String, dynamic>> pickImage() async {
    throw UnsupportedError('Image picker is not available on this platform.');
  }
}
