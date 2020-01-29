import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
class Libary extends StatefulWidget {
  @override
  _LibaryState createState() => _LibaryState();
}

class _LibaryState extends State<Libary> {
   void changeBrightness() {
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(6.5),
            // child: Image(
            //   height: 200,
            //   width: 50,
            //   image: AssetImage("asstes/youtube_logo.png",),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 104),
            child: IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {},
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
      child: ListView(
        children: <Widget>[
         ListTile(leading: Icon(Icons.history,size: 28,),
           title: Text("History",
           style: TextStyle( fontSize: 16)
          ),
         ),

          ListTile(leading: Icon(Icons.file_download,size: 28,),
           title: Text("Download",
           style: TextStyle( fontSize: 16), 
          ),
          subtitle: Text("20 recommendations"),
         ),

          ListTile(leading: Icon(Icons.play_circle_outline,size: 28,),
           title: Text("My Videos",
           style: TextStyle( fontSize: 16),
          ),
         ),

          ListTile(leading: Icon(Icons.local_offer,size: 28,),
           title: Text("Purchases",
           style: TextStyle( fontSize: 17),
          ),
         ),

          ListTile(leading: Icon(Icons.watch_later,size: 28,),
           title: Text("Watch Later",
           style: TextStyle( fontSize: 16),
          ),
          subtitle: Text("23 unwatched videos"),
         ),

         ListTile(leading: Icon(Icons.brightness_2,size: 28,),
           title: Text("Change Theme",
           style: TextStyle( fontSize: 16),
          ),
          onTap: () {
            changeBrightness();
          },
         ), 

         Container(
           height: 0.60,
           width: double.infinity,
           color: Colors.grey,
         ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Playlists"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Recently added "),
            )
          ],
        ),

        ListTile(
          leading: Icon(Icons.add,color: Colors.blue[800],),
          title: Text("Liked Videos",
          style: TextStyle(
            color: Colors.blue[800],
            fontWeight: FontWeight.bold
           ),
          ),
          subtitle: Text("680 Videos"),
        ),


        ListTile(
          leading: Image(
            height: 150,
            width: 80,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQuFVKPafkX7AKuA79aCD-GqlgoYEd7jxWZgoLNhQjxCNoZKzwE"),
          ),
          title: Text("Dart  Videos Tutorial in English"),
          subtitle: Text("Hitesh Chaurady - 50 Videos"),
        ),


        ListTile(
          leading: Image(
            height: 150,
            width: 80,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQJsnF1fR5zTVZI_ewgtNOiffxWWIGY6rYqKgNtspIFpVejGEwA"),
          ),
          title: Text("C Language Tutorials In Hindi"),
          subtitle: Text("Codewithherry - 62 Videos"),
        ),


        ListTile(
          leading: Image(
            height: 100,
            width: 80,
            image: NetworkImage("https://images.pexels.com/photos/359568/pexels-photo-359568.png?cs=srgb&dl=apple-apple-computer-boy-code-359568.jpg&fm=jpg"),
          ),
          title: Text("Top 5 worst programming language in 2020"),
          subtitle: Text("Saksham the computer guy - 19 Videos"),
        ),

         ListTile(
          leading: Image(
            height: 150,
            width: 80,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOfgKGh9CCGL0jdvAoqPk9JKF9gleLUNkr9GgU5TpGKGCbKheR"),
          ),
          title: Text("Day in the Life of a Software Developer"),
          subtitle: Text("Clever Programmer -  Videos"),
        ),
        


        ],
      )
      )
        
      
    );
  }
}