import 'package:fltr_instagram/pages/insta_stories.pages.dart';
import 'package:flutter/material.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).size;

    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
      ? new SizedBox(
        child: new InstaStories(),
        height: deviceSize.height * 0.15,
      ):Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(
              16.0, 
              16.0, 
              8.0, 
              16.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                            "https://www.papodecinema.com.br/wp-content/uploads/2017/01/20170112-lego-batman-poster-e1484230275192.jpg"
                          )
                        )
                      ),
                    ),
                    new Text(
                      "  whoami",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                new IconButton(
                  icon: Icon(Icons.more_vert), 
                  onPressed: null,)
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: new Image.network(
              "https://s3.amazonaws.com/images.gearjunkie.com/uploads/2018/05/matterhorn-3x21.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}