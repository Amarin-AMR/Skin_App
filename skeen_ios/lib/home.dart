import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imageclassification/info.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
        body: SafeArea(

            // return Container(
            child: Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          'Skin Disease',
          style: TextStyle(
            fontSize: 30,
            color: Colors.orange,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: PageView(
            /// [PageView.scrollDirection] defaults to [Axis.horizontal].
            /// Use [Axis.vertical] to scroll vertically.
            controller: controller,
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Melanoma.jpg',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/basal.jpg',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),

                        // TextButton(
                        //   onPressed: () => showDialog<String>(
                        //     context: context,
                        //     builder: (BuildContext context) => AlertDialog(
                        //       title: const Text('AlertDialog Title'),
                        //       content: Stack(
                        //         alignment: Alignment.center,
                        //         children: <Widget>[
                        //           Image.asset(
                        //             'assets/Melanoma.jpg',
                        //             width: 100,
                        //             height: 100,
                        //             fit: BoxFit.cover,
                        //           ),
                        //         ],
                        //       ),
                        //       actions: <Widget>[
                        //         TextButton(
                        //           onPressed: () =>
                        //               Navigator.pop(context, 'Cancel'),
                        //           child: const Text('Cancel'),
                        //         ),
                        //         TextButton(
                        //           onPressed: () => Navigator.pop(context, 'OK'),
                        //           child: const Text('OK'),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        //   child: const Text(
                        //     'Melonama',
                        //     style: TextStyle(color: Colors.pink),
                        //   ),
                        // ),
                        // TextButton(
                        //   onPressed: () => showDialog<String>(
                        //     context: context,
                        //     builder: (BuildContext context) => AlertDialog(
                        //       title: const Text('AlertDialog Title'),
                        //       content: Stack(
                        //         alignment: Alignment.center,
                        //         children: <Widget>[
                        //           Image.asset(
                        //             'assets/basal.jpg',
                        //             width: 100,
                        //             height: 100,
                        //             fit: BoxFit.cover,
                        //           ),
                        //         ],
                        //       ),
                        //       actions: <Widget>[
                        //         TextButton(
                        //           onPressed: () =>
                        //               Navigator.pop(context, 'Cancel'),
                        //           child: const Text('Cancel'),
                        //         ),
                        //         TextButton(
                        //           onPressed: () => Navigator.pop(context, 'OK'),
                        //           child: const Text('OK'),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        //   child: const Text('Basal cell carcinoma',
                        //       style: TextStyle(color: Colors.pink)),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Melonama and Basal cell carcinoma',
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '[There are harm skin disease.]',
                      style: TextStyle(color: Colors.pink),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // TextButton(
                          //   onPressed: () => showDialog<String>(
                          //     context: context,
                          //     builder: (BuildContext context) => AlertDialog(
                          //       title: const Text('AlertDialog Title'),
                          //       content: Stack(
                          //         alignment: Alignment.center,
                          //         children: <Widget>[
                          //           Image.asset(
                          //             'assets/sebor.jpg',
                          //             width: 100,
                          //             height: 100,
                          //             fit: BoxFit.cover,
                          //           ),
                          //         ],
                          //       ),
                          //       actions: <Widget>[
                          //         TextButton(
                          //           onPressed: () =>
                          //               Navigator.pop(context, 'Cancel'),
                          //           child: const Text('Cancel'),
                          //         ),
                          //         TextButton(
                          //           onPressed: () => Navigator.pop(context, 'OK'),
                          //           child: const Text('OK'),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          //   child: const Text('Benign keratosis'),
                          // ),
                          // TextButton(
                          //   onPressed: () => showDialog<String>(
                          //     context: context,
                          //     builder: (BuildContext context) => AlertDialog(
                          //       title: const Text('AlertDialog Title'),
                          //       content: Stack(
                          //         alignment: Alignment.center,
                          //         children: <Widget>[
                          //           Image.asset(
                          //             'assets/derma.jpg',
                          //             width: 100,
                          //             height: 100,
                          //             fit: BoxFit.cover,
                          //           ),
                          //         ],
                          //       ),
                          //       actions: <Widget>[
                          //         TextButton(
                          //           onPressed: () =>
                          //               Navigator.pop(context, 'Cancel'),
                          //           child: const Text('Cancel'),
                          //         ),
                          //         TextButton(
                          //           onPressed: () => Navigator.pop(context, 'OK'),
                          //           child: const Text('OK'),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          //   child: const Text('Dermatofibroma'),
                          // ),
                          Image.asset(
                            'assets/sebor.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/derma.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Benign keratosis, Dermatofibroma',
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '[There are harmless.]',
                        style: TextStyle(color: Colors.orangeAccent),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // TextButton(
                          //   onPressed: () => showDialog<String>(
                          //     context: context,
                          //     builder: (BuildContext context) => AlertDialog(
                          //       title: const Text('AlertDialog Title'),
                          //       content: Stack(
                          //         alignment: Alignment.center,
                          //         children: <Widget>[
                          //           Image.asset(
                          //             'assets/nv.jpg',
                          //             width: 100,
                          //             height: 100,
                          //             fit: BoxFit.cover,
                          //           ),
                          //         ],
                          //       ),
                          //       actions: <Widget>[
                          //         TextButton(
                          //           onPressed: () =>
                          //               Navigator.pop(context, 'Cancel'),
                          //           child: const Text('Cancel'),
                          //         ),
                          //         TextButton(
                          //           onPressed: () =>
                          //               Navigator.pop(context, 'OK'),
                          //           child: const Text('OK'),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          //   child: const Text('Melanocytic nevi'),
                          // ),
                          // TextButton(
                          //   onPressed: () => showDialog<String>(
                          //     context: context,
                          //     builder: (BuildContext context) => AlertDialog(
                          //       title: const Text('AlertDialog Title'),
                          //       content: Stack(
                          //         alignment: Alignment.center,
                          //         children: <Widget>[
                          //           Image.asset(
                          //             'assets/Actinic.jpeg',
                          //             width: 100,
                          //             height: 150,
                          //             fit: BoxFit.cover,
                          //           ),
                          //         ],
                          //       ),
                          //       actions: <Widget>[
                          //         TextButton(
                          //           onPressed: () =>
                          //               Navigator.pop(context, 'Cancel'),
                          //           child: const Text('Cancel'),
                          //         ),
                          //         TextButton(
                          //           onPressed: () =>
                          //               Navigator.pop(context, 'OK'),
                          //           child: const Text('OK'),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          //   child: const Text('Actinic Keratosis'),
                          // ),

                          Image.asset(
                            'assets/nv.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/Actinic.jpeg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/vasc.png',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Melanocytic nevi, Actinic Keratosis',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vascular skin lesions',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '[There is small change to become skin cancer]',
                        style: TextStyle(color: Colors.green),
                      )
                      // Center(
                      //   child: TextButton(
                      //     onPressed: () => showDialog<String>(
                      //       context: context,
                      //       builder: (BuildContext context) => AlertDialog(
                      //         title: const Text('AlertDialog Title'),
                      //         content: Stack(
                      //           alignment: Alignment.center,
                      //           children: <Widget>[
                      //             Image.asset(
                      //               'assets/vasc.png',
                      //               width: 100,
                      //               height: 100,
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ],
                      //         ),
                      //         actions: <Widget>[
                      //           TextButton(
                      //             onPressed: () =>
                      //                 Navigator.pop(context, 'Cancel'),
                      //             child: const Text('Cancel'),
                      //           ),
                      //           TextButton(
                      //             onPressed: () => Navigator.pop(context, 'OK'),
                      //             child: const Text('OK'),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     child: const Text('Vascular skin lesions'),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                backgroundColor: Colors.orange),
            // shape: new RoundedRectangleBorder(
            //    borderRadius: new BorderRadius.circular(30.0),
            //    ),
            // color: Colors.orange,
            child: Text(
              'Begin',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Get.to(() => MyHomePage());
            }),
      ],
    )));
  }
}
