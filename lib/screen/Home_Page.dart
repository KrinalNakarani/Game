import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  List game_pic = [
    "assets/images/fruit.png",
    "assets/images/bubble.png",
    "assets/images/element.png",
    "assets/images/om_nom.png",
    "assets/images/tower.png",
    "assets/images/archery.png",
  ];
  List game_link = [
    "https://html5games.com/Game/Fruit-Ninja/5450f1ec-af9e-4859-832a-69da3715c378",
    "https://html5games.com/Game/Bubble-Tower-3D/1385d98a-b5f2-4339-bce7-b99a8dd2e8b0",
    "https://html5games.com/Game/Element-Blocks/8c70b6c7-5792-4c40-b891-496eef2fb5ed",
    "https://html5games.com/Game/Om-Nom-Run/abe80572-560a-444d-baf7-2fa4a7b2c02f",
    "https://html5games.com/Game/Tower-Crash-3D/68a7c06e-ec27-4fa4-99a5-a5e9702ac4ef",
    "https://html5games.com/Game/Archery-World-Tour/ebcb987a-3fd0-4b4a-bae6-f456fff9cac3"
  ];
  List G_Name = [
    "Fruit Ninja",
    "Bubble Tower",
    "Element Blocks",
    "Om Nom Run",
    "Tower Crush 3D",
    "Aschery Game"
  ];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Games"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Container(
          height: double.infinity,
          color: Colors.black,
          child: ListView.builder(
            itemCount: game_pic.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'game',
                      arguments: game_link[index]);
                },
                child: Container(
                  height: 450,
                  width: 400,
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        height: 400,
                        width: 400,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                game_pic[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${G_Name[index]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
