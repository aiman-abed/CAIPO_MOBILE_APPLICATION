import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:flutter_dotenv/flutter_dotenv.dart';

class GeminiService {
  final String apiUrl = "https://generativelanguage.googleapis.com/v1beta2/models/text-bison-001:generateText"; // api url endpoint
  final String apiKey = "AIzaSyDQ-T0dAjQ5_ixsasD-gr_QbM9pVyvYc2w"; //  API key

  Future<String> queryGemini(String prompt, {int maxTokens = 150, double temperature = 0.7}) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          "Authorization": "Bearer $apiKey",
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "prompt": prompt,
          "max_tokens": maxTokens,
          "temperature": temperature,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data["generatedText"] ?? "No response from Gemini";
      } else {
        return "Error: ${response.statusCode}, ${response.reasonPhrase}, ${response.body}";
      }
    } catch (e) {
      return "Failed to connect to Gemini: $e";
    }
  }
}
