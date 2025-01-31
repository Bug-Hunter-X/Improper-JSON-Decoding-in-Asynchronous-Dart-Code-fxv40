```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
          // Use the data here
      } catch (e) {
        print('Error decoding JSON: $e');
        //Handle the error, maybe by showing a user-friendly error message or retrying.
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //More robust error handling could involve retrying, showing an error to user, or logging it to a central monitoring service.
  }
}
```