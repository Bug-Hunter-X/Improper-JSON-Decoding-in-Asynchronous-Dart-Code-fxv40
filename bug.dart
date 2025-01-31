```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Incorrect JSON decoding leading to an error. 
      final data = jsonDecode(response.body);
      // Use the data
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    //Handle the error better, maybe by retrying or showing error message.
  }
}
```