import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskmanager/models/tasks.dart';
import 'package:taskmanager/models/tasksmenu.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        centerTitle: false,
        title: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: ClipOval(
                child: Image.asset(
                  "assets/profile2.png",
                  width: 40,
                  height: 40,
                ),
              ),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/svg/menu.svg",
              height: 25,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hello, Jessika!",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 188,
                  child: Text(
                    "You've got 8 tasks today",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  )),
              Container(
                height: 90,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 6,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Project time tracker",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black54.withOpacity(0.8)),
                        ),
                        Text(
                          "You can start tracking",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFfabb19)),
                      child: Icon(Icons.play_arrow),
                    )
                  ],
                ),
              ),
              _buildHeader()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "My tasks",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
              ),
              Container(
                width: 80,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      "Tasks",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              itemCount: TasksMenu.menu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    print(selectedMenu);
                    setState(() {
                      selectedMenu = i;
                    });
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 10, top: 10),
                      child: Text(
                        TasksMenu.menu[i].title,
                        style: TextStyle(
                            color: selectedMenu == i
                                ? Color(0xFFfabb19)
                                : Colors.grey,
                            fontSize: 16,
                            fontWeight: selectedMenu == i
                                ? FontWeight.w500
                                : FontWeight.w400),
                      )),
                );
              },
            ),
          ),
          Container(
              height: 200,
              child: ListView.builder(
                  padding:
                      EdgeInsets.only(right: 20, top: 20, bottom: 20, left: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: Tasks.tasks.length,
                  itemBuilder: (context, i) {
                    return Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(right: 10),
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 6,
                              blurRadius: 10,
                              offset: Offset(0, 0),
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            Tasks.tasks[i].title,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          Text(
                            Tasks.tasks[i].content,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Progress"),
                              Text(
                                "35%",
                                style: TextStyle(
                                    color: Color(0xFFfabb19),
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: Color(0xFFfabb19).withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Container(
                                width: 60,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: Color(0xFFfabb19).withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
