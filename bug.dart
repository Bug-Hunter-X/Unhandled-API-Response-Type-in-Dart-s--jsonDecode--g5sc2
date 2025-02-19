```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's the potential bug: Assuming the response is always a JSON list
      final data = jsonDecode(response.body) as List<dynamic>; 
      // Process the data
    } else {
      // Handle errors
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
  }
}
```