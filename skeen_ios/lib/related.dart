import 'package:flutter/material.dart';
import 'card.dart';

class Related extends StatefulWidget {
  var path;
  Related({required this.path});
  @override
  _RelatedState createState() => _RelatedState(path: path);
}

class _RelatedState extends State<Related> {
  var path;
  _RelatedState({required this.path});
  // var
  @override
  Widget build(BuildContext context) {
    dynamic a = related.where((element) => element['name'] == path).first;
    // print(related.where((element) => element['name']==path));
    // print(a['list'][1]['header']);

    return Scaffold(
      appBar: AppBar(
        title: Text('Related Disease'),
      ),
      body: ListView.builder(
        itemCount: a["list"].length == null ? 0 : a["list"].length,
        itemBuilder: (BuildContext context, int index) {
          // print(index);
          // print(a['list'][index]['header']);

          return new Card(
              elevation: 10,
              child: Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 2,
                        child: 
                        // Container(
                        //   decoration: BoxDecoration(
                        //     border: Border.all(),
                        //   ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: AspectRatio(aspectRatio: 0.8,
                            child: Image(
                              
                              fit: BoxFit.cover,
                              image: AssetImage(
                                a['list'][index]['image'],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          
                          children: [
                          Text(
                            a['list'][index]['header'],
                            
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            a['list'][index]['description'],
                            textAlign: TextAlign.justify,
                          ),
                        ]),
                      ),
                    ],
                  )));
        },
      ),
    );
  }
}
