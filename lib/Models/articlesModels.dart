class Articlesmodels {
 final String? image;
 final String title;
 final String? subtitle;
 final Source? source;
 Articlesmodels( {
 required this.source,
  
   required this.image,required this.title,required this.subtitle});
}  
class Source{

  final String? id;
  final String? name;
  Source({required this.id, required this.name});
}