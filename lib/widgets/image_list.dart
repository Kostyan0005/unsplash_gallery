import 'package:flutter/material.dart';
import '../models/images.dart';
import '../screens/photo_screen.dart';

class ImageList extends StatefulWidget {
  @override
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  Images images;

  Future<void> updateImageList() async {
    Images tempImages = Images();
    await tempImages.getImageData();

    setState(() {
      images = tempImages;
    });
  }

  @override
  void initState() {
    super.initState();
    updateImageList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images != null ? images.length : 0,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              images.getDescription(index) ?? 'No description',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              'By ${images.getAuthorName(index)}',
            ),
            SizedBox(height: 12),
            GestureDetector(
              child: Image.network(images.getThumbnailPath(index)),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/photo',
                  arguments: PhotoScreenArguments(
                    imagePath: images.getPath(index),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
