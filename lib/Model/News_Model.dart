class News_Model{
  List<dynamic> news;
  News_Model({required this.news});
  factory News_Model.fromjson(Map<String,dynamic>json){
    return News_Model(news: json["articles"]);
  }
}