import 'package:cv/CardBoxText.dart';
import 'package:cv/MyColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Batool',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the.
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const cv(),
    );
  }
}

class cv extends StatefulWidget {
  const cv({Key? key}) : super(key: key);

  @override
  _cvState createState() => _cvState();
}

class _cvState extends State<cv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.coffe,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
             // backgroundColor: MyColor.white,
              backgroundImage: AssetImage(".dart_tool/assets/image/20211230_212734.jpg"),
              radius: 90,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Batool Ahmed Abd el-monem",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              "(Study Computer Sciences and Information System o6u )",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: Divider(
                height: 100,thickness:
                5,
                color: MyColor.brownDark,
              ),
            ),

                CardBoxText(
                    icon: Icons.email_outlined,
                    text: "batoolahmad002@gmail.com"),
                CardBoxText(text: "01026678834", icon: Icons.phone),

          ],
        ),
      ),
    );
  }
}
