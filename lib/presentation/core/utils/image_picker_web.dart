import 'package:dgi/presentation/core/utils/abs_i_image_picker_service.dart';
import 'package:dgi/presentation/core/utils/web_image_picker_service.dart';

AbsIImagePickerService createImagePicker() => WebImagePickerService();
