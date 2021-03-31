import 'package:e_shop/Models/item.dart';
import 'package:e_shop/Store/storehome.dart';
import 'package:e_shop/Widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../Widgets/customAppBar.dart';

class SearchProduct extends StatefulWidget {
  @override
  _SearchProductState createState() => new _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  Future<QuerySnapshot> docList;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            child: searchWidget(),
            preferredSize: Size(56, 56),
          ),
        ),
        drawer: MyDrawer(),
        body: FutureBuilder<QuerySnapshot>(
          future: docList,
          builder: (context, snap) {
            return snap.hasData
                ? ListView.builder(
                    itemCount: snap.data.documents.length,
                    itemBuilder: (context, index) {
                      ItemModel model =
                          ItemModel.fromJson(snap.data.documents[index].data);
                      return sourceInfo(model, context);
                    })
                : Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'No data available',
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }

  searchWidget() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      color: Colors.white70,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.search,
              size: 25.0,
              color: Colors.blue,
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: TextField(
                style: TextStyle(
                  fontSize: 20,
                ),
                onChanged: (value) {
                  startSearching(value);
                },
                decoration: InputDecoration.collapsed(
                  hintText: 'Search here....',
                  hintStyle: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future startSearching(String query) async {
    docList = Firestore.instance
        .collection('items')
        .where('shortInfo', isGreaterThanOrEqualTo: query)
        .getDocuments();
  }
}
