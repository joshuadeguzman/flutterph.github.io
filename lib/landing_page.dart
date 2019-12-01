// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:flutterph_github_io/widgets/responsive_widget.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LandingPageState();
  }
}

class LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Opacity(
              opacity: 0.5,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "web/assets/images/preview_study_jam.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Color(0xdd044782),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Container(
                            height: ResponsiveWidget.isSmallScreen(context)
                                ? 100
                                : 150,
                            child: Image.asset(
                              "web/assets/images/logo_flutterph.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: SelectableText(
                            "Flutter Philippines",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                            ),
                          ),
                        ),
                        Container(
                          width: ResponsiveWidget.isSmallScreen(context)
                              ? MediaQuery.of(context).size.width * 0.80
                              : MediaQuery.of(context).size.width * 0.50,
                          padding: EdgeInsets.only(top: 8),
                          child: SelectableText(
                            "A collaborative community for anyone interested in developing apps using Flutter and Dart.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: SelectableText(
                            "#flutter #flutterdev #flutterdotph",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 32),
                          child: Text(
                            "Connect with us",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          margin: EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 48,
                                width: 48,
                                child: FlatButton(
                                  onPressed: () {
                                    _launchUrl(
                                      "https://bit.ly/flutterph-facebook",
                                    );
                                  },
                                  child: Image.asset(
                                    "web/assets/images/social_facebook.png",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                child: FlatButton(
                                  onPressed: () {
                                    _launchUrl(
                                      "https://bit.ly/flutterph-facebook-group",
                                    );
                                  },
                                  child: Image.asset(
                                    "web/assets/images/social_facebook_group.png",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                child: FlatButton(
                                  onPressed: () {
                                    _launchUrl(
                                      "https://bit.ly/flutterph-meetup",
                                    );
                                  },
                                  child: Image.asset(
                                    "web/assets/images/social_meetup.png",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                child: FlatButton(
                                  onPressed: () {
                                    _launchUrl(
                                      "https://bit.ly/flutterph-twitter",
                                    );
                                  },
                                  child: Image.asset(
                                    "web/assets/images/social_twitter.png",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                child: FlatButton(
                                  onPressed: () {
                                    _launchUrl(
                                      "https://bit.ly/flutterph-instagram",
                                    );
                                  },
                                  child: Image.asset(
                                    "web/assets/images/social_instagram.png",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 32),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Supported by",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                width: ResponsiveWidget.isSmallScreen(context)
                                    ? 150
                                    : 200,
                                child: Image.asset(
                                  "web/assets/images/logo_google_developers.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchUrl(String url) {
    js.context.callMethod("open", [url]);
  }
}
