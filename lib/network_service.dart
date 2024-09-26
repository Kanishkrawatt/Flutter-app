import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  final response = await http.get(url);
  print('Response Body: ${response.body}');
}
