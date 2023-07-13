import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class Port {
  var title;
  var imgs;
  var desc;

  Port({title, imgs, desc});
}

class App extends StatefulWidget {
  App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var isVisible = false;
  List<Map<String, String>> portfolio = [
    {"imgs": "flutter-logo.png", "title": "Flutter", "desc": "앱 개발"},
    {"imgs": "Angular.png", "title": "Angular", "desc": "웹 프레임워크"},
    {"imgs": "hibernate.jpg", "title": "hibernate", "desc": "Java ORM"},
    {"imgs": "go.png", "title": "go", "desc": "프로그래밍 언어"},
    {"imgs": "java.png", "title": "java", "desc": "프로그래밍 언어"},
    {"imgs": "kubernate.png", "title": "kubernate", "desc": "애플리케이션 배포"},
    {"imgs": "python.png", "title": "python", "desc": "프로그래밍 언어"},
    {"imgs": "React.png", "title": "React", "desc": "웹 프레임워크"},
    {"imgs": "spring.png", "title": "spring", "desc": "백엔드 프레임워크"},
    {"imgs": "vue.png", "title": "vue", "desc": "웹 프레임워크"},
  ];
  var a = [
    Port(imgs: "flutter-logo.png", title: "Flutter", desc: "앱 개발"),
    Port(
      imgs: "Angular.png",
      title: "Angular",
      desc: "웹 프레임워크",
    ),
    Port(
      imgs: "hibernate.jpg",
      title: "hibernate",
      desc: "Java ORM",
    ),
    Port(
      imgs: "go.png",
      title: "go",
      desc: "프로그래밍 언어",
    ),
    Port(imgs: "java.png", title: "java", desc: "프로그래밍 언어"),
    Port(
      imgs: "kubernate.png",
      title: "kubernate",
      desc: "애플리케이션 배포",
    ),
    Port(
      imgs: "python.png",
      title: "python",
      desc: "프로그래밍 언어",
    ),
    Port(
      imgs: "React.png",
      title: "React",
      desc: "웹 프레임워크",
    ),
    Port(
      imgs: "spring.png",
      title: "spring",
      desc: "백엔드 프레임워크",
    ),
    Port(
      imgs: "vue.png",
      title: "vue",
      desc: "웹 프레임워크",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              side: BorderSide(color: Colors.grey),
            ),
            elevation: 10.0,
            margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: 10,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(90)),
                    width: 120,
                    height: 120,
                    child: const Image(
                      image: AssetImage('images/my_profile.JPG'),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "최문찬",
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("anscks2350@naver.com",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Back-End Developer",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    child: const Text('포트폴리오'),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Container(
                        width: double.infinity,
                        height: 570,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              for (var i = 0; i < portfolio.length; i++)
                                portfolioLists(
                                    portfolio[i]["imgs"]!,
                                    portfolio[i]["title"]!,
                                    portfolio[i]["desc"]!)
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding portfolioLists(String imgs, String title, String desc) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Row(
          children: [
            Image(
              image: AssetImage('images/' + imgs),
            ),
            SizedBox(
              height: 5,
              width: 10,
            ),
            Column(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                ),
                Text(desc)
              ],
            )
          ],
        ),
      ),
    );
  }
}
