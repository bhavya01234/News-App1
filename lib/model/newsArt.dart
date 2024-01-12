//DATA MODEL is for linking frontend with backend
class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsHead,
    required this.newsUrl,
    required this.newsDes,
});
 static NewsArt fromApitoApp(Map<String,  dynamic> article){
   return NewsArt(
       imgUrl: article["urlToImage"] ?? "https://plus.unsplash.com/premium_photo-1688561383440-feef3fee567d?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
       newsHead: article["title"] ?? "TITLE NULL",
       newsUrl: article["url"] ?? "https://www.livemint.com/news/india/ed-names-priyanka-gandhi-in-money-laundering-case-linked-to-cc-thampi-for-first-time-11703726795634.html",
       newsDes: article["content"] ?? "DESCRIPTION NULL"
   );
 }
}