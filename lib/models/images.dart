import 'package:http/http.dart' as http;
import 'dart:convert';

const String apiRoute =
    'http://api.unsplash.com/photos/?client_id=cf49c08b444ff4cb9e4d126b7e9f7513ba1ee58de7906e4360afc1a33d1bf4c0';

class Images {
  List imageData = [];

  // Returns data of 10 latest images from Unsplash
  Future<void> getImageData() async {
    var response = await http.get(apiRoute);

    if (response.statusCode == 200) {
      imageData = jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }

  int get length => imageData.length;

  String getDescription(int index) {
    return imageData[index]['description'];
  }

  String getAuthorName(int index) {
    return imageData[index]['user']['name'];
  }

  String getPath(int index) {
    return imageData[index]['urls']['regular'];
  }

  String getThumbnailPath(int index) {
    return imageData[index]['urls']['thumb'];
  }
}
