import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imageclassification/info.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.05, 0.05),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 40,
                        child: DefaultTextStyle(
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                            fontSize: 30,
                          ),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            isRepeatingAnimation: true,
                            animatedTexts: [
                              FadeAnimatedText(
                                'Skin Disease',
                              ),
                              FadeAnimatedText(
                                'which the things ',
                              ),
                              FadeAnimatedText(
                                'cannot to ignore',
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Text(
                      //   'Skin Disease',
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Melanoma.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/basal.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      // Image.network(
                      //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fstem.in.th%2F%25E0%25B8%2595%25E0%25B8%25A3%25E0%25B8%25A7%25E0%25B8%2588%25E0%25B9%2580%25E0%25B8%25A5%25E0%25B8%25B7%25E0%25B8%25AD%25E0%25B8%2594%25E0%25B9%2580%25E0%25B8%259E%25E0%25B8%25B7%25E0%25B9%2588%25E0%25B8%25AD%25E0%25B8%25AB%25E0%25B8%25B2%25E0%25B9%2580%25E0%25B8%258B%25E0%25B8%25A5%25E0%25B8%25A5%25E0%25B9%258C%25E0%25B8%25A1%2F&psig=AOvVaw0RN_g6lJPaAQiFi06X2CTZ&ust=1651428902290000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCJjC6J-yvPcCFQAAAAAdAAAAABAD',
                      //   width: 100,
                      //   height: 100,
                      //   fit: BoxFit.fitWidth,
                      // ),
                      // Text(
                      //   'Melonama and Basal cell carcinoma [There are harm skin disease.]',
                      //   style: TextStyle(color: Colors.red),
                      // ),
                      SizedBox(
                        height: 20,
                        child: DefaultTextStyle(
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 15,
                          ),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            isRepeatingAnimation: true,
                            animatedTexts: [
                              WavyAnimatedText(
                                  'Melonama and Basal cell carcinoma'),
                              WavyAnimatedText(
                                  '[There are harm skin disease.]'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/sebor.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/derma.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      // Text(
                      //   'Benign keratosis, Dermatofibroma [There are harmless.] ',
                      // ),
                      SizedBox(
                        height: 20,
                        child: DefaultTextStyle(
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 15,
                          ),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            isRepeatingAnimation: true,
                            animatedTexts: [
                              WavyAnimatedText(
                                  'Benign keratosis, Dermatofibroma'),
                              WavyAnimatedText(
                                  '[There are harmless skin disease.]'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/nv.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/Actinic.jpeg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/vasc.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      // Text(
                      //   'Melanocytic nevi, Actinic Keratosis, Vascular skin lesions [There is small change to become skin cancer]',
                      // ),
                      SizedBox(
                        height: 20,
                        child: DefaultTextStyle(
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                          ),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            isRepeatingAnimation: true,
                            animatedTexts: [
                              WavyAnimatedText(
                                  'Melanocytic nevi, Actinic Keratosis, Vascular skin lesions'),
                              WavyAnimatedText(
                                  '[There is small change to become skin cancer]'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                          color: Colors.orange,
                          child: Text(
                            'Start',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Get.to(() => MyHomePage());
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
