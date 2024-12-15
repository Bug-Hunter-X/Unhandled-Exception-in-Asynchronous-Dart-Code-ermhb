```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Handle error response effectively
      print('Error: API request failed with status code ${response.statusCode}.');
    }
  } catch (e) {
    // Handle exceptions in a user-friendly way
    print('An error occurred while fetching data: $e');
  }
}

void main() async {
  await fetchData();
}
```