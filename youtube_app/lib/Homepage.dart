import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:youtube_app/PlayVideos.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  spin(){
    return SpinKitCircle(color: Colors.blue);
  }
  var data;
  String url = "https://userapi.tk/youtube/";

  Future<String> getjsondata() async {
    var responese = await http.get(Uri.encodeFull(url));
    setState(() {
      var convertdata = json.decode(responese.body);
      data = convertdata;
      print(data);
    });
  }

  @override
  void initState() {
    getjsondata();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return data!=null? Scaffold(
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
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlayVideos(data,index)),
                        );
                      },
                      child: Container(
                          height: 200,
                          width: double.infinity,
                          child: Image.network(
                            data[index]["ThumbmnilURL"],
                            fit: BoxFit.fitWidth,
                          ))
                      ),
                  // Container(
                  //     height: 200,
                  //     width: double.infinity,
                  //     child: Image.network(
                  //       data[index]["ThumbmnilURL"],
                  //       fit: BoxFit.fitWidth,
                  //     )),
                  Row(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 13, bottom: 20),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage: NetworkImage(
                              data[index]["ProfileiconURL"],
                            ),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.77,
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Wrap(
                                  children: <Widget>[
                                    Text(
                                      data[index]["Title"],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  data[index]["Name"],
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("${data[index]["Views"]}",
                                    style: TextStyle(fontSize: 12)),
                              ),
                              Text("${data[index]["Day"]}",
                                  style: TextStyle(fontSize: 12))
                            ],
                          )
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Icon(Icons.more_vert))
                    ],
                  ),
                ],
              ),
              childCount: data.length,
            ),
          ),
        ],
      ),
    ):spin();
  }
}
