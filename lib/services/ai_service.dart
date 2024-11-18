import 'package:http/http.dart' as http;
import 'dart:convert';

class AIService {
  final String apiKey = 'YOUR_OPENAI_API_KEY';

  Future<String> getStylingSuggestions(String query) async {
    final url = Uri.parse('https://api.openai.com/v1/completions');
    final headers = {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    };
    final body = jsonEncode({
      'model': 'text-davinci-003',
      'prompt': query,
      'max_tokens': 100,
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['choices'][0]['text'].trim();
    }
    return 'Error fetching suggestions';
  }
}
