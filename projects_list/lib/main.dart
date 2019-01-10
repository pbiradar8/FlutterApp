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
  List<String> projectList = ['Nexsys Clearsign','2048','ABG Acid-Base Eval','Mini Bitbucket','Scanbacks','EMS-SPOT'];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: projectList.length,
      itemBuilder: (context, rowNumber) {
        var num = rowNumber;
        return new Container(
          padding: new EdgeInsets.all(16.0),
          child: new Column(
            children: <Widget>[
              new SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: new Image.asset('images/picture$num.png'),
              ),
              new Container(height: 10.0,),
              new Text(projectList[num]),
              new Divider(),
            ],
          ),
        );
      },
    );
  }
}
