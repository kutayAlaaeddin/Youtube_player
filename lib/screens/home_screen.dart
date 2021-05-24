import 'package:flutter/material.dart';
import './youtube_player.dart';

import 'default_videos.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();
  final urlTxtController = TextEditingController();
  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   urlTxtController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Player Aplication"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          //key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: urlTxtController,
                  decoration: InputDecoration(
                    labelText: "Buraya bağlantı yapıştırın..",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter URL';
                    }
                    return null;
                  },
                ),
                RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.search_off),
                          Text("Ara"),
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => Youtubeplayer(
                                urlTxt: urlTxtController.text,
                              )),
                    );
                  },
                ),
                RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.video_collection),
                          Text("Hazır olan videolara göz at"),
                        ],
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => DefaultVideos()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
