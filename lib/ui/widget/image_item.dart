import 'package:flutter/material.dart';
import 'package:pixabay_search/model/image_info.dart' as imageInfo;

class ImageItem extends StatelessWidget {
  final imageInfo.ImageInfo info;

  const ImageItem(this.info, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32),
        Image.network(
          info.previewURL ?? '',
          width: 200,
          height: 150,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 32),
        Text(info.tags ?? ''),
      ],
    );
  }
}
