import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Container(
                height: 100,
                width: 100,
                child: Image.asset("asstes/youtube_logo.png")),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.videocam,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.search,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person),
                ),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          height: 67,
                          width: 67,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.twinkl.co.uk/tr/image/upload/illustation/Bee-ManagingMyClassRoutinesRuleshotspots-Harassed-Flustered--InteractiveActivityEnglish-KS1.png"),
                            ),
                          )),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 166,
                            child: Wrap(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                      " programmers close friend is error"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 166,
                            child: Padding(
                              padding: const EdgeInsets.all(2.5),
                              child: Text(
                                "7 hours ago",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          height: 68,
                          width: 99,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyjivzOOFa6nDXdY5H65DfLSMNM0CpszFEeKif1L_kt3nOwAAA"),
                            ),
                          )),
                      Icon(Icons.more_vert)
                    ],
                  ),
                ],
              ),
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
