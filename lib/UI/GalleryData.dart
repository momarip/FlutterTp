import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GalleryData extends StatefulWidget {
  static String tag = 'GalleryData';
  String keyWord;
  GalleryData(this.keyWord);
  @override
  _GalleryData createState() => _GalleryData();
}

class _GalleryData extends State<GalleryData> {
  List<dynamic> data;
  int currentPage = 1;
  int pageSize = 10;
  int totalPages = 0;
  ScrollController _scrollController = new ScrollController();
  dynamic dataGallery;
  List<dynamic> hits = new List();
  getData(url) {
    http.get(url).then((resp) {
      setState(() {
        dataGallery = json.decode(resp.body);
        hits.addAll(dataGallery['hits']);
        if (dataGallery['totalHits'] % this.pageSize == 0)
          this.totalPages = dataGallery['totalHits'] ~/ this.pageSize;
        else
          this.totalPages =
              1 + (dataGallery['totalHits'] / this.pageSize).floor();
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  void initState() {
    super.initState();
    this.loadData();
    this._scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (currentPage < totalPages) {
          ++currentPage;
          this.loadData();
        }
      }
    });
  }

  @override
  void dispose() {
// TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  void loadData() {
    String url =
        "https://pixabay.com/api/?key=15963121-80e89576ae7b3c27492297f22&q=${widget.keyWord}&page=$currentPage&per_page=$pageSize&image_type=photo";
    print(url);
    this.getData(url);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold();
  }
  
}
