import 'package:flutter/material.dart';

void main() => runApp(new ProjectsListApp());

class ProjectsListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Project List",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Projects List"),
          ),
          body: new HomeWidget(),
        ));
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 20,
      itemBuilder: (context, rowNumber) {
        var num = rowNumber + 1;
        return new Container(
          padding: new EdgeInsets.all(16.0),
          child: new Column(
            children: <Widget>[
              new Image.network(
                "https://raw.githubusercontent.com/flutter/website/master/src/_includes/code/layout/lakes/images/lake.jpg",
              ),
              new Container(height: 10.0,),
              new Text("Project $num"),
              new Divider(),
            ],
          ),
        );
      },
    );
  }
}
