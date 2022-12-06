// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable, file_names, no_leading_underscores_for_local_identifiers, sized_box_for_whitespace, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  var image;
  var title;
  var description;
  var date;
  var content;
  var url;
  NewsPage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.date,
    required this.content,
    required this.url,
  }) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Page")),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                widget.image,
                errorBuilder: (context, error, stackTrace) {
                  return Image.network(
                      'https://demofree.sirv.com/nope-not-here.jpg');
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 18, color: Colors.grey[500]),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Date: ' + widget.date,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  )),
              SizedBox(height: 30),
              SizedBox(height: 10),
            ],
          ),
        ),
      ]),
    );
  }
}
