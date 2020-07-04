import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scalapay_integration/ui/order_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'api/api.dart';

import 'custom_widgets/button_widget.dart';
import 'custom_widgets/custom_row.dart';
import 'models/configuration.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    routes: routes,
  ));
}

final routes = <String, Widget Function(BuildContext)>{
  OrderScreen.route: (_) => OrderScreen(),
  MyHomePage.route: (_) => MyHomePage(),
  MyApp.route: (_) => MyApp(),
};

class MyApp extends StatefulWidget {
  static const String route = '/myapp';

  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: MyHomePage(),
      title: Text(
        'Buy Now Pay Later',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
      ),
      image: Image.asset(
        'assets/icons/pay_with.png',
      ),
      backgroundColor: Color(0xff232336),
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 200.0,
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String route = '/my_home';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  LanguageSupported _language = LanguageSupported.english;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232336),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FutureBuilder<Configuration>(
                future: API().getConfiguration(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        Container(
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                          child: Image.asset(
                            "assets/icons/download.jpg",
                            scale: 1.5,
                          ),
                        ),
                        Container(height: 24),
                        Container(
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              "Details about Configuration".toUpperCase(),
                              style: TextStyle(fontSize: 22, color: Colors.black),
                            ),
                          ),
                        ),
                        Container(height: 24),
                        CustomRow(
                          header: "Payment Type",
                          content: snapshot.data.type.toString().replaceAll(
                                "_",
                                " ",
                              ),
                        ),
                        CustomRow(
                            header: "Minimum Amount",
                            content: snapshot.data.minimumAmount.amount +
                                " " +
                                snapshot.data.minimumAmount.currency),
                        CustomRow(
                            header: "Maximum Amount",
                            content: snapshot.data.maximumAmount.amount +
                                " " +
                                snapshot.data.minimumAmount.currency),
                        CustomRow(
                            header: "Number of Installments",
                            content: snapshot.data.numberOfPayments),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 0),
                                child: Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Choose language",
                                        style: TextStyle(color: Colors.white, fontSize: 16)),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Radio(
                                        value: LanguageSupported.english,
                                        groupValue: _language,
                                        onChanged: (LanguageSupported value) {
                                          setState(() {
                                            _language = value;
                                          });
                                        },
                                      ),
                                      new Text(
                                        'English',
                                        style: new TextStyle(fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Radio(
                                        value: LanguageSupported.france,
                                        groupValue: _language,
                                        onChanged: (LanguageSupported value) {
                                          setState(() {
                                            _language = value;
                                          });
                                        },
                                      ),
                                      new Text(
                                        'French',
                                        style: new TextStyle(fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Radio(
                                        value: LanguageSupported.italy,
                                        groupValue: _language,
                                        onChanged: (LanguageSupported value) {
                                          setState(() {
                                            _language = value;
                                          });
                                        },
                                      ),
                                      new Text(
                                        'Italian',
                                        style: new TextStyle(fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(height: 32),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 0),
                          child: ButtonWidget(
                            content: "PLACE ORDERS",
                            backGroundColor: Colors.white,
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, OrderScreen.route);
                            },
                          ),
                        ),
                        Container(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () async {
                                  launch(snapshot.data.promotionUrl);
                                },
                                child: Text(
                                  snapshot.data.promotionUrl,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
                            Image.asset(
                              "assets/icons/promo_code.png",
                              scale: 5,
                            )
                          ],
                        ),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text("${snapshot.error}"));
                  }
                  return CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum LanguageSupported { english, france, italy }

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
