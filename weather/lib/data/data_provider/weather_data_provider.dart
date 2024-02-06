import 'package:http/http.dart' as http;
import '../../utils/constant.dart';

class WeatherDataProvider {
  Future<String> getCurrentWeather(String cityName) async {
    try {
      final res = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?q=Jepara&appid=e9c5394f54edc08820faac7e6eb2e580',
        ),
      );

      return res.body;
    } catch (e) {
      throw e.toString();
    }
  }
}
