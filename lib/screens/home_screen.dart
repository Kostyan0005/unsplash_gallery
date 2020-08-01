import 'package:flutter/material.dart';
import '../widgets/image_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unsplash Gallery'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: ImageList(),
        ),
      ),
    );
  }
}
