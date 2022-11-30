import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:imageclassification/info.dart';
import 'map.dart';
import 'related.dart';
import 'help.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  var data = Get.arguments[0];
  var confidence = Get.arguments[1];
  bool checkHarm = false;
  Image _image = Get.arguments[2];
  //String path ='';
  //var path = Get.arguments[0].replaceAll(" ","%20");
  //String Newpath = Uri.decodeFull("Melanoma%20(mel)");
  String path() {
    String a = Get.arguments[0];
    if (a == 'Melanocytic nevi (nv)') {
      return 'nv';
    } else if (a == 'Melanoma (mel)') {
      return 'mel';
    } else if (a == 'Benign keratosis-like lesions (bkl)') {
      return 'bkl';
    } else if (a == 'Basal cell carcinoma (bcc)') {
      return 'bcc';
    } else if (a == 'Actinic keratoses (akiec)') {
      return 'akiec';
    } else if (a == 'Vascular lesions (vasc)') {
      return 'vasc';
    } else {
      //Dermatofibroma (df)
      return 'df';
    }
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width - 10;
    //var h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Result'),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => Dialog(
                          insetPadding: EdgeInsets.all(15.0),
                          backgroundColor: Color(0xFFAE7261),
                          child: Stack(children: <Widget>[
                            Help(data: data),
                          ]),
                          //title: const Text('AlertDialog Title'),

                          //shape: ,
                        ),
                      );
                    },
                    icon: Icon(Icons.help_outline_rounded)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (() {
                    if (data == 'Melanoma (mel)' ||
                        data == 'Basal cell carcinoma (bcc)') {
                      checkHarm = true;
                      return '**warning**';
                    } else {
                      checkHarm = false;
                      return '';
                    }
                  })(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  //showdata
                  data,
                  style: TextStyle(
                    fontSize: 20,
                    color: checkHarm != true ? Color(0xFFAE7261) : Colors.red,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text(
                //   //showacc
                //   confidence,
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: checkHarm != true ? Colors.green : Colors.red,
                //     fontStyle: FontStyle.italic,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),

                    // Image(
                    //   image: AssetImage(
                    //     'assets/${path()}.jpg',
                    //   ),
                    //   width: w - 50,
                    //   height: 250,
                    // ),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height / 3),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: _image,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      data,
                      style: TextStyle(
                          color: Color(0xFFFF8885),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Text(
                    //   '[There are harm skin disease.]',
                    //
                    // ),
                    Text(
                      (() {
                        if (data == 'Melanocytic nevi (nv)') {
                          return '[There is small change to become skin cancer]';
                        } else if (data == 'Melanoma (mel)') {
                          return '[There are harm skin disease.]';
                        } else if (data ==
                            'Benign keratosis-like lesions (bkl)') {
                          return '[There are harmless.]';
                        } else if (data == 'Basal cell carcinoma (bcc)') {
                          return '[There are harm skin disease.]';
                        } else if (data == 'Actinic keratoses (akiec)') {
                          return '[There is small change to become skin cancer]';
                        } else if (data == 'Vascular lesions (vasc)') {
                          return '[There is small change to become skin cancer]';
                        } else {
                          //Dermatofibroma (df)
                          return '[There are harmless.]';
                        }
                      }()),
                      style: TextStyle(color: Color(0xFFFF8885)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
              ),
              margin: EdgeInsets.only(left: 60, right: 60),
              child: TextButton(
                onPressed: () => {
                  Get.to(Related(path: path())),
                },
                child: const Text(
                  'Nearby Disease',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
              ),
              margin: EdgeInsets.only(left: 60, right: 60),
              child: TextButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    insetPadding: EdgeInsets.all(10.0),
                    child: Stack(children: <Widget>[
                      Map(
                        data: data,
                      ),
                    ]),
                    //title: const Text('AlertDialog Title'),

                    //shape: ,
                  ),
                ),
                child: const Text(
                  'Place of Treatment',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange),
                ),
              ),
            ),
          ],
        ));
  }
}
