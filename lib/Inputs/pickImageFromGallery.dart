import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageFromGallery extends StatefulWidget {
  const ImageFromGallery({Key? key}) : super(key: key);

  @override
  State<ImageFromGallery> createState() => _ImageFromGalleryState();
}

class _ImageFromGalleryState extends State<ImageFromGallery> {
  List<XFile>? _imageFileList;
  void _setImageFileListFromFile(XFile? value) {
    _imageFileList = value == null ? null : <XFile>[value];
  }

  dynamic _pickImageError;
// Read this : https://pub.dev/packages/image_picker/example
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
    );
  }
}
