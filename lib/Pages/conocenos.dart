import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class Conocenos extends StatefulWidget {
  Conocenos({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ConocenosState createState() => _ConocenosState();
}

class _ConocenosState extends State<Conocenos> {
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(
          8,
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(width: 2, color: Color(0xff022e5f)),
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: ListView(
          children: <Widget>[
            Container(
                height: 70,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // color: Color(0xff022e5f),
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 5,
                  //     blurRadius: 7,
                  //     offset:
                  //         Offset(0, 3), // changes position of shadow
                  //   ),
                  // ],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          decoration: new BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://firebasestorage.googleapis.com/v0/b/rapoporras-2c44a.appspot.com/o/logo_a.png?alt=media&token=d45ff139-fe65-4dff-8e37-5c6171669b4b")))),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "320",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("post")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("3202",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text("followers")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("1320",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text("following")
                          ],
                        ),
                      ),
                    ])),
            Container(
              height: 450,
              decoration: BoxDecoration(
                color: Colors.white,
                // color: Color(0xff022e5f),
                // border: Border.all(width: 2, color: Colors.grey)
              ),
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(20),
              //     topRight: Radius.circular(20)),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.5),
              //     spreadRadius: 5,
              //     blurRadius: 7,
              //     offset:
              //         Offset(0, 3), // changes position of shadow
              //   ),
              // ],

              child: StoryView(
                controller: controller,
                storyItems: [
                  StoryItem.inlineImage(
                    url:
                        "https://i.pinimg.com/564x/fb/7c/fa/fb7cfa3f4dc77659ca512092798ed3cb.jpg",
                    controller: controller,
                    caption: Text(
                      "",
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  StoryItem.inlineImage(
                    url:
                        "https://cdn.memegenerator.es/imagenes/memes/full/12/55/12550644.jpg",
                    controller: controller,
                    caption: Text(
                      "",
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  StoryItem.inlineImage(
                    url:
                        "https://i.pinimg.com/564x/73/a1/1a/73a11ac29058329fb9b477ba45575811.jpg",
                    controller: controller,
                    caption: Text(
                      "",
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
                onStoryShow: (s) {
                  print("Showing a story");
                },
                onComplete: () {
                  print("Completed a cycle");
                },
                progressPosition: ProgressPosition.bottom,
                repeat: false,
                inline: true,
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MoreStories()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(8))),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Ver más stories",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 45,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: MoreGradientColors.instagram,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                child: Text(
                  "Siguenos en Instagram!!",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoreStories extends StatefulWidget {
  @override
  _MoreStoriesState createState() => _MoreStoriesState();
}

class _MoreStoriesState extends State<MoreStories> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://i.pinimg.com/474x/30/cf/a2/30cfa27545036dbc07aa079c3d6f4067.jpg",
            caption: "",
            controller: storyController,
          ),
          StoryItem.pageImage(
              url:
                  "https://i.pinimg.com/564x/7f/fe/9c/7ffe9c58cca0de2cc47482b47a3cca2f.jpg",
              caption: "",
              controller: storyController),
          StoryItem.pageImage(
            url:
                "https://cdn.generadormemes.com/media/created/98a0s3725eweiy43b30j6hmwej8e6pdjtk7vkyfktlry1b32in063abh835rq11.jpg",
            caption: "",
            controller: storyController,
          ),
        ],
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          print("Completed a cycle");
        },
        progressPosition: ProgressPosition.top,
        repeat: true,
        controller: storyController,
      ),
    );
  }
}
