import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListviewSample extends StatelessWidget {
  List<Listmodel> lst = [
    Listmodel(
        title: "Cyra",
        description: "Cyra learnings",
        image: "assets/images/download.jpg",
        icon: Icons.add),
    Listmodel(
        title: "Flutter",
        description: "Flutter framework",
        image: "assets/images/download.jpg",
        icon: Icons.add),
    Listmodel(
        title: "Dart",
        description: "Dart programming language",
        image: "assets/images/download.jpg",
        icon: Icons.add)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Listview Screen",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                color: Color.fromARGB(86, 180, 136, 255),
                child: Center(
                    child: ListTile(
                  title: Text(lst[index].title),
                  subtitle: Text(lst[index].description),
                  trailing: Icon(lst[index].icon),
                  onTap: () {
                    log("clicked " + lst[index].title);
                  },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage(lst[index].image),
                  ),
                )),
              ),
            );
          },
        ));
  }
}

class Listmodel {
  String title;
  String description;
  String image;
  IconData icon;
  Listmodel(
      {required this.title,
      required this.description,
      required this.image,
      required this.icon});
}
