import 'package:flutter/material.dart';
import 'package:news/controller/fetchNews.dart';
import 'package:news/model/newsArt.dart';

import 'package:news/view/widgets/NewsContainer.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late NewsArt newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchNews();
    setState(() {

    });
  }
  @override
  void initState() {

    //FetchNews.fetchNews();
    super.initState();
    GetNews();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      //scrolling pages
      body: PageView.builder(
        //start from which page controlled by :
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
          //below line important to avoid infinite loop
          onPageChanged: (value) {
            // setState(() {
            //   isLoading = true;
            // });
            GetNews(); // GetNews is called only when the page is changed
          },
        //itemCount: 300,

          itemBuilder: (context,index){
          //FetchNews.fetchNews();
           // return Center(child: Text("Page Number $index"),);
          //GetNews();
            return NewsContainer(
                //imgUrl: "https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                //newsHead: "5G in India",
                //newsDes: "5G is great on paper. But in real-world use, it has been synonymous with call drops, constant shuffle between 4G and 5G, and network vacuums. It has basically been a disaster and in this piece, we dig deeper into the poor experience.",
                //newsUrl: "https://www.indiatoday.in/technology/talking-points/story/5g-is-available-in-india-in-almost-every-city-and-yet-so-far-its-rollout-has-been-a-disaster-for-users-2454636-2023-10-28",
              imgUrl: newsArt.imgUrl,
              newsHead: newsArt.newsHead,
              newsDes: newsArt.newsDes,
              newsUrl: newsArt.newsUrl,
            );
          }),
    );
  }
}
