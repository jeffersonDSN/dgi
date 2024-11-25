import 'package:dgi/presentation/core/utils/abs_i_image_picker_service.dart';
import 'package:dgi/presentation/core/utils/mobile_image_picker_service.dart';

AbsIImagePickerService createImagePicker() => MobileImagePickerService();
