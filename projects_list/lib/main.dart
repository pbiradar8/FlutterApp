import 'package:flutter/material.dart';

void main() => runApp(new ProjectsListApp());

class ProjectsListApp  extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: "Project List",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Projects List"),
          ),
          body: new Center(
            child: Text("Home"),
          ),
        ) 
      );
    }
}