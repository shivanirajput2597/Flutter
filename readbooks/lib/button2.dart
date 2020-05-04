import 'package:flutter/material.dart';


class moreinfo extends StatefulWidget {
  @override
  _moreinfoState createState() => _moreinfoState();
}

class _moreinfoState extends State<moreinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        title: Text(
          "About author and book",
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold, 
              color: Colors.black,
              ),
            ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ), 
        body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget>[
            Image.asset(
              "assets/images/author.jpg",
              height: 90.0,
              width: 90.0,
            ),
            Padding(
            padding: EdgeInsets.all(5.0),
            ),
            Text('Author: Shiv Khera',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold, 
              color: Colors.black,
              fontFamily: "Caveat",
              ),

            ),
            Padding(
            padding: EdgeInsets.all(5.0),
            ),
            Text('Publisher: Bloomsbury India; Edition edition (2014)',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold, 
              color: Colors.black,
              fontFamily: "Caveat",
              ),

            ),
            Padding(
            padding: EdgeInsets.all(5.0),
            ),
            Text('Book Description :The highest-selling inspirational book in India that has sold over 2.7 million copies.',


            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold, 
              color: Colors.black,
              fontFamily: "Caveat",
              ),

            ),
             Padding(
            padding: EdgeInsets.all(5.0),
            ),
            Text('About author :Shiv Khera is the founder of Qualified Learning Systems Inc. USA. He is an educator, business consultant and successful entrepreneur and a much sought-after speaker. Shiv inspires and encourages people, making them realize their true potential, and has taken his dynamic personal messages to far ends of the globe; tens of thousands have benefited from his energetic workshops in over 17 countries; millions have heard him as a keynote speaker; and he has appeared on numerous radio and television shows. His 30 years of research and experience have helped people on the path of personal growth and fulfillment.',


            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold, 
              color: Colors.black,
              fontFamily: "Caveat",
              ),

            ),



          ],
        ),
      ),
    
      
    );
  }
}