import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List image=[
    "assets/images/sundar.jpg",
    "assets/images/bill.jpg",
    "assets/images/jeff.jpg",
    "assets/images/mukesh.jpg",
    "assets/images/tim.jpg",
    "assets/images/shantnu.jpg",
    "assets/images/daniel.jpg",
    "assets/images/harald.jpg",
    "assets/images/micheal.jpg",
    "assets/images/bob.jpg",
  ];
  List name=[
    "Sunder Pichai",
    "Bill Gates",
    "Jeff Bezcs",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Michal Dell",
    "Bob Swan",
  ];
  List com=[
    "GOOGLE",
    "MICROSOFT",
    "AMAZONE",
    "RELIENCE LTD",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];

  List boxcolor=[
    Colors.blue.shade900,
    Colors.white,
    Colors.blue.shade900,
    Colors.white,
    Colors.blue.shade900,
    Colors.white,
    Colors.blue.shade900,
    Colors.white,
    Colors.blue.shade900,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CEO List.."),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,end: Alignment.bottomCenter,
            colors: [Color(0xff364ad7),
              Color(0xff80229d),]
          ),
        ),

        child: ListView.builder(
          itemCount: image.length,
          padding: EdgeInsets.all(5),
          itemBuilder: (context, index) =>
              Padding(
                padding: const EdgeInsets.all(10),
                child: Box(image[index], name[index], com[index],
                    boxcolor[index]),
              ),
        ),
      ),
    ),
    );
  }
  }
  Widget Box(String image,String name,String com,Color boxcolor) {
    return Container(
      height: 70,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: boxcolor,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.blueGrey,
          backgroundImage:AssetImage(image),
        ),
        title: Text(name),
        subtitle: Text(com),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
}
