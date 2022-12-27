import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const animationscreen(),
    );
  }
}

class animationscreen extends StatefulWidget {
  const animationscreen({super.key});

  @override
  State<animationscreen> createState() => _animationscreenState();
}

class _animationscreenState extends State<animationscreen> {
  Color topcolor = Colors.red;
  Color bottomcolor = Colors.green;
  var colorlist = [
    Colors.pink,
    Colors.red,
    Colors.pinkAccent,
    Colors.deepPurple,
    Colors.indigo,
    Colors.lightBlue,
  ];
  var index = 0;
  late var link;
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        bottomcolor = Colors.pink;
      });
    });
    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 2),
            onEnd: (() {
              setState(() {
                index++;
                bottomcolor = colorlist[index % colorlist.length];
                topcolor = colorlist[(index + 1) % colorlist.length];
              });
            }),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    topcolor,
                    bottomcolor,
                  ]),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.network(
                "https://img.freepik.com/free-photo/close-up-advertising-agency-employee-hands-typing-keyboard-working-research-charts-company-office-worker-using-computer-develop-marketing-strategy-business-clients-portfolio_482257-38738.jpg?w=1060&t=st=1668613345~exp=1668613945~hmac=0f51d00deb9e196142bdb274dd903d16feba0c4a7c1849bd1e0cb0862ce9ead8",
                width: double.infinity,
              ),
              Text(
                'Anas softeng',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Developer|Youtuber|Trader|Realtor',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () async {
                        link = Uri.parse("https://twitter.com/MalikAnas95");
                        if (await canLaunchUrl(link)) {
                          launchUrl(link);
                        } else {
                          print("failed to reload");
                        }
                      },
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () async {
                        link = Uri.parse("https://twitter.com/MalikAnas95");
                        if (await canLaunchUrl(link)) {
                          launchUrl(link);
                        }
                      },
                      icon: Icon(
                        Icons.whatsapp,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () async {
                        link = Uri.parse("https://twitter.com/MalikAnas95");
                        if (await canLaunchUrl(link)) {
                          launchUrl(link);
                        } else {}
                      },
                      icon: Icon(
                        Icons.snapchat_outlined,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () async {
                        link = Uri.parse("https://twitter.com/MalikAnas95");
                        if (await canLaunchUrl(link)) {
                          launchUrl(link);
                        }
                      },
                      icon: Icon(
                        Icons.telegram,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () async {
                        link = Uri.parse("https://twitter.com/MalikAnas95");
                        if (await canLaunchUrl(link)) {
                          launchUrl(link);
                        }
                      },
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      )),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
