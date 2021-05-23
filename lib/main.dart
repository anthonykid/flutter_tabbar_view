import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      //A material design widget that displays a horizontal row of tabs.
      //indicatorColor: Colors.red, //to only highlight the underline of the tab
      indicator: BoxDecoration(
          //Defines the appearance of the selected tab indicator.
          color: Colors.red[400], //The color to fill in the background of the box.
          border: Border( //A border to draw above the background [color], [gradient], or [image].


              top: BorderSide(
                  //Creates the side of a border.
                  color: Colors.purple,
                  width: 5))), //to highlight all the selected tab
      //Creates a material design tab bar.
      tabs: <Widget>[ //Typically a list of two or more [Tab] widgets.
        //Typically a list of two or more [Tab] widgets.
        Tab(
          //Creates a page view with one child per tab.
          icon: Icon(Icons.comment),
          text: "Comments",
        ),
        Tab(
          //Creates a page view with one child per tab.
          icon: Icon(Icons.recommend),
          text: "Recommend",
        )
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
          //Creates a material design tab bar.
          length: 2, //The total number of tabs that we need.
          child: Scaffold(
            //Creates a visual scaffold for material design widgets.
            backgroundColor: Colors.indigo[
                200], //The color of the [Material] widget that underlies the entire Scaffold.
            appBar: AppBar(
              //Creates a material design app bar.
              title: Text("Tab Bar Practice"),
              backgroundColor: Colors.indigo[800],
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(color: Colors.amber[900], child: myTabBar)),
            ),
            body: TabBarView(
              //Creates a page view with one child per tab.
              children: <Widget>[
                Center(
                  child: Text("Tab 1"), //text for tab 1
                ),
                Center(
                  child: Text("Tab 2"), //text for tab 2
                ),
              ],
            ),
          )),
    );
  }
}
