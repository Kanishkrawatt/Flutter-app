import 'dart:convert';
import 'package:network_debugging_demok/network/http_client.dart';

Future<void> fetchData() async {
  final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print('Data: $data');
  } else {
    print('Failed to load data');
  }
}
