import 'dart:html';
import 'detail_news_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PageHomeSportNews extends StatefulWidget {
  @override
  _PageHomeSportNewsState createState() => _PageHomeSportNewsState();
}

class _PageHomeSportNewsState extends State<PageHomeSportNews> {

  Future<List> getData() async {
    final responseData = await http.get('http://berita-sport-sample.test:8080/getBerita.php');
    return json.decode(responseData.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sport News'),
        backgroundColor: Colors.redAccent,
      ),
      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot){
          //check has data or error
          if(snapshot.hasError) print(snapshot.error);

          return snapshot.hasData ? ItemListSport(list : snapshot.data) : Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class ItemListSport extends StatelessWidget {

  final List list;
  ItemListSport({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context,i){
        return Container(
          padding: EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PageDetailNews(
                list: list,
                index : i,
              )));
            },
            child: Card(
              child: ListTile(
                title: Text(list[i]['judul_berita'], style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent
                ),),
                subtitle: Text("Date : ${list[i]['judul_berita']}"),
                trailing: Image.network(list[i]['gbr_berita'],fit: BoxFit.cover,
                width: 60.0,
                height: 60.0,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

