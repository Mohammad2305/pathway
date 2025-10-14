import 'package:image_picker/image_picker.dart';

Future<String?> chooseGalleryImage() async{
  final ImagePicker picker = ImagePicker();
  final XFile? galleryPick = await picker.pickImage(source: ImageSource.gallery);
  return galleryPick?.path;
}

Future<String?> chooseCameraImage() async{
  final ImagePicker picker = ImagePicker();
  final XFile? cameraPick = await picker.pickImage(source: ImageSource.camera);
  return cameraPick?.path;
}