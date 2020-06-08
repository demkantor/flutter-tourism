import 'package:flutter/material.dart';

import './text_section.dart';
import './image_banner.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourism'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner('assets/images/santorini.jpg'),
          TextSection("summary", "words and stuff"),
          TextSection("summary", "words and stuff2"),
          TextSection("summary", "words and stuff3"),
        ],
      ),
    );
  }
}
