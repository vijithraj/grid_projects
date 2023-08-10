import 'package:flutter/material.dart';
import 'datamodel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List store = [
    ListData(
        imagepath: "images/check-list.png",
        name: "Calender",
        name1: "March,Wednesday",
        name2: "3 Events"),
    ListData(
        imagepath: "images/grocery.png",
        name: "Groceries",
        name1: "Bocali,Apple",
        name2: "4 Items"),
    ListData(
        imagepath: "images/placeholder.png",
        name: "Locations",
        name1: "Lucy mao going to office",
        name2: ""),
    ListData(
        imagepath: "images/groups.png",
        name: "Activity",
        name1: "Rose favirited your post",
        name2: ""),
    ListData(
        imagepath: "images/schedule.png",
        name: "To do",
        name1: "Homework,Design",
        name2: "4 Items"),
    ListData(
        imagepath: "images/setting.png",
        name: "Setting",
        name1: "",
        name2: "2 Items"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade700,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "MY FAMILY",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Align(alignment: Alignment.bottomLeft,
                      child: Text(
                        "HOME",
                        style: TextStyle(fontSize: 15, color: Colors.white24,),

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/chat.png"))),
              )
            ],
          ),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: store.length,
              itemBuilder: (BuildContext context, int index) {
                return
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(store[index].imagepath))),
                        ),
                        Text(
                          store[index].name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          store[index].name1,
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          store[index].name2,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              })
        ])));
  }
}
