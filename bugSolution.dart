```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      // Check response type and handle accordingly
      if (data is List<dynamic>) {
        // Process the data as a list
        print('Data received as a list: $data');
      } else if (data is Map<String, dynamic>) {
        // Process the data as a map
        print('Data received as a map: $data');
      } else {
        // Handle other types or errors
        print('Unexpected data type: ${data.runtimeType}');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```