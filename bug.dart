```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle other exceptions (e.g., network errors)
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}

void main() async {
  await fetchData();
}
```