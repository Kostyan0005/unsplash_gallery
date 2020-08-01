import 'package:flutter/material.dart';

class PhotoScreenArguments {
  final String imagePath;

  PhotoScreenArguments({@required this.imagePath});
}

class PhotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
    final PhotoScreenArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Center(
        child: Image.network(args.imagePath),
      ),
    );
  }
}
