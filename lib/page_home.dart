import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'page_classroom.dart';

class PageHome extends StatefulWidget {
  String _title;

  PageHome(this._title);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      //_image = image;
    });
  }

  void _goClassroom(context) {

    PageClassRoom('Flutter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget._title}'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.crop_free), onPressed: getImage),
        ],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
              '${widget._title}内容',
              style: TextStyle(fontSize: 20),
            ),
          ),
          FlatButton.icon(
            onPressed: () {
              //Navigator.pop(context);
            },
            icon: Icon(Icons.add),
            label: Text('首页'),
          ),
          Center(
            child: OutlineButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageClassRoom('Flutter')));
              },
              child: Text('跳到课堂教室'),
              textColor: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}