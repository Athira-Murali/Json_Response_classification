import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart' as rootBundle;
import 'package:json_call/model/classification_model.dart';

class ClassificationView extends StatefulWidget {
  @override
  _ClassificationViewState createState() => _ClassificationViewState();
}

class _ClassificationViewState extends State<ClassificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<ClassificationModel>;
          return Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.amber.shade100,
              ),
              SafeArea(
                  child: Row(
                children: [
                  // Expanded(
                  //     flex: 1,
                  //     child: Container(
                  //       color: Colors.black,
                  //     )),
                  // Expanded(
                  //     flex: 1,
                  //     child: Container(
                  //       color: Colors.blue,
                  //     )),
                  Expanded(
                      flex: 3,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 2,
                            crossAxisSpacing: 1,
                            childAspectRatio: 2.4),
                        itemCount: items == null ? 0 : items.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Text(items[index].question),
                              Text(items[index].category1.winter.toString()),
                            ],
                          );
                        },
                      )),

                  Expanded(
                      flex: 3,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 2,
                            crossAxisSpacing: 1,
                            childAspectRatio: 2.4),
                        itemCount: items == null ? 0 : items.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Text(items[index].category2.summer.toString()),
                            ],
                          );
                        },
                      )),
                ],
              ))
            ],
          );

          // ListView.builder(
          //     itemCount: items == null ? 0 : items.length,
          //     itemBuilder: (context, index) {
          //       return Card(
          //         elevation: 5,
          //         margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          //         child: Container(
          //           padding: EdgeInsets.all(8),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Container(
          //                   height: 50,
          //                   child: Text(items[index].question.toString())),
          //               Expanded(
          //                   child: Container(
          //                 padding: EdgeInsets.only(bottom: 8),
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Padding(
          //                       padding: EdgeInsets.only(left: 8, right: 8),
          //                       child: Text(
          //                         items[index].name.toString(),
          //                         style: TextStyle(
          //                             fontSize: 16,
          //                             fontWeight: FontWeight.bold),
          //                       ),
          //                     ),
          //                     // Padding(
          //                     //   padding: EdgeInsets.only(left: 8, right: 8),
          //                     //   child: Text(items[index].price.toString()),
          //                     // )
          //                   ],
          //                 ),
          //               ))
          //             ],
          //           ),
          //         ),
          //       );
          //     });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }

  Future<List<ClassificationModel>> ReadJsonData() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('assets/json/classifications.json');
    final list = json.decode(jsondata) as List<dynamic>;
    //final list = json.decode(jsondata);
    return list.map((e) => ClassificationModel.fromJson(e)).toList();
  }
}
