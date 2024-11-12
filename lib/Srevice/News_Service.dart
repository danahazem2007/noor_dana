import 'package:dio/dio.dart';

import '../Model/News_Model.dart';

class News_Service {
  static Dio dio = Dio();

  static Future <News_Model> getall() async {
    try {
      Response response = await dio.get
        (
          'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=39c5f0038d274b86ac6cbe948b7e1ccf');
      if(response.statusCode==200 ) {
        return News_Model(news: response.data);
      }
      else{
        throw Exception('filed');
      }
    } catch (error) {
      throw "Error: $error";
    }
  }
}