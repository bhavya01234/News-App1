import 'package:flutter/material.dart';
import 'package:news/view/widgets/detail_view.dart';
class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  NewsContainer({super.key,
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            height:400,
              width:MediaQuery.of(context).size.width,
              fit:BoxFit.cover,
              imgUrl),
          Text(newsHead,
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 20,
          )
            ,),
          Text(
            newsDes.length>200 ? newsDes.substring(0,200):
            //to remove +XXX words
            "${newsDes.toString().substring(0, newsDes.length-15)}...",
              //newsDes,
              style: TextStyle(
                fontSize: 15,
              )),
          ElevatedButton(onPressed: (){
           // print("GOING TO $newsUrl");
            Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailViewScreen(newsUrl: newsUrl)));
          }, child: Text("Read More")),
        ],
      ),
    );
  }
}
