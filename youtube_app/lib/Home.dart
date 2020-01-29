import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            color: Colors.red,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS3kK8vBXZ0xpw-ParSob5ttwizf5pV3uXwCKIX4aXkvMDdp17I",
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQknUiYoYpr5q6ubKOYg7USAyVgIew1nAMjAAQZXbtmfMYW0wby",
                    )),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 70, bottom: 12, top: 12),
                    child: Text(
                      "Introduction to flutter and FAQ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 0, bottom: 15),
                        child: Text("  Hitesh Choudhary ·"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1, bottom: 15),
                        child: Text("  546k Views ·"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 22, bottom: 15),
                        child: Text("1 month ago"),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, bottom: 23),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
           Container(
            height: 250,
            color: Colors.red,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTNjpkyVRyvPEsrcbfUDn7ClIMaV0mLZacxfNPgQe5VqE7iaGnU",
              fit: BoxFit.fill,
            ),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQknUiYoYpr5q6ubKOYg7USAyVgIew1nAMjAAQZXbtmfMYW0wby",
                    )),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 70, bottom: 12, top: 12),
                    child: Text(
                      "Introduction to flutter and FAQ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8, bottom: 15),
                        child: Text("  Hitesh Choudhary ·"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 15),
                        child: Text("  346k Views ·"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 22, bottom: 15),
                        child: Text("3 hour ago"),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, bottom: 23),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
            Container(
            height: 250,
            color: Colors.red,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR4vNP8auPYtEP1uMBzBFouy7k6pl2-ZXflj9LmFld9_KFdy7lF",
              fit: BoxFit.fill,
            ),
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQknUiYoYpr5q6ubKOYg7USAyVgIew1nAMjAAQZXbtmfMYW0wby",
                    )),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 70, bottom: 12, top: 12),
                    child: Text(
                      "Introduction to flutter and FAQ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8, bottom: 15),
                        child: Text("  Hitesh Choudhary ·"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 15),
                        child: Text("  346k Views ·"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 22, bottom: 15),
                        child: Text("3 hour ago"),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, bottom: 23),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
            Container(
            height: 250,
            color: Colors.red,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQBEzc0lln-zSrQ5AVarAY9ipJrvRSLdXX6wCvsPY-HzmMd3txT",
              fit: BoxFit.fill,
            ),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQknUiYoYpr5q6ubKOYg7USAyVgIew1nAMjAAQZXbtmfMYW0wby",
                    )),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 70, bottom: 12, top: 12),
                    child: Text(
                      "Introduction to flutter and FAQ",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8, bottom: 15),
                        child: Text("  Hitesh Choudhary ·"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 15),
                        child: Text("  346k Views ·"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 22, bottom: 15),
                        child: Text("3 hour ago"),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, bottom: 23),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ],
        
      ),
    );
  }
}
