import 'package:http/http.dart' as http;
void main() {
  // https://jsonplaceholder.typicode.com/photos/10
  fetchPhotos().then((res) {
    print('res body : ${res.body}');
  });
  // https://jsonplaceholder.typicode.com/photos
}

Future<http.Response> fetchPhotos() async {
  var uri = "https://jsonplaceholder.typicode.com/photos/10";
  var response = await http.get(Uri.parse(uri));
  return response;
}