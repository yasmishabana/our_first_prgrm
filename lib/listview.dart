import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListviewScreen extends StatelessWidget {
  List lst = ['1', 'a', 2, "b"];
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
        body: ListView(
          children: [
            Image.network(
                "https://1.bp.blogspot.com/-kK7Fxm7U9o0/YN0bSIwSLvI/AAAAAAAACFk/aF4EI7XU_ashruTzTIpifBfNzb4thUivACLcBGAsYHQ/s1280/222.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://1.bp.blogspot.com/-Ry-mRshadmU/YMi1aNqp2XI/AAAAAAAABpQ/KyHh1cf1U4ghw_2dars0_5vTRQiOpv2uACLcBGAsYHQ/s1640/IMG_20210615_171302.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                // child: Image.network(
                //     "https://1.bp.blogspot.com/-Ry-mRshadmU/YMi1aNqp2XI/AAAAAAAABpQ/KyHh1cf1U4ghw_2dars0_5vTRQiOpv2uACLcBGAsYHQ/s1640/IMG_20210615_171302.jpg"),
              ),
            ),
            Icon(Icons.access_alarm_outlined),
            Image.asset("assets/images/download.jpg"),
            ElevatedButton(onPressed: () {}, child: Text("listview")),
            Container(
              height: 300,
              color: Colors.black,
            ),
            Text("Item 1"),
            Container(
              height: 300,
              color: Colors.green,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("item 2")),
                    ),
                  )
                ],
              )),
            ),
            Container(
              height: 300,
              color: Colors.yellow,
            ),
            Container(
              height: 300,
              color: Colors.blueGrey,
            ),
          ],
        ));
  }
}
