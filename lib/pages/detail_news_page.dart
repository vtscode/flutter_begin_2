import 'package:flutter/material.dart';

class PageDetailNews extends StatefulWidget {

  List list;
  int index;

  PageDetailNews({this.list,this.index});

  @override
  _PageDetailNewsState createState() => _PageDetailNewsState();
}

class _PageDetailNewsState extends State<PageDetailNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.list[widget.index]['judul_berita']),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: <Widget>[
          Image.network(widget.list[widget.index]['gbr_berita']),
          Container(
            padding: EdgeInsets.all(32.0),
            child: Row(
              children : <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text('Title : ${widget.list[widget.index]['judul_berita']}', style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      
                      Text('Date : ${widget.list[widget.index]['tgl_berita']}',style: TextStyle(
                        color: Colors.redAccent
                      ),),

                    ],
                  ),
                ),

                Icon(Icons.star,color: Colors.redAccent,)

              ]
            ),
          ),

          Container(
            padding: EdgeInsets.all(32.0),
            child: Text(widget.list[widget.index]['isi_berita'], softWrap: true,),
          )

        ],
      ),
    );
  }
}
