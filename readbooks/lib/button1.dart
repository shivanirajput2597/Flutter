import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ReadAssetFileState pageState;

class ReadAssetFile extends StatefulWidget {
  @override
  ReadAssetFileState createState() {
    pageState = ReadAssetFileState();
    return pageState;
  }
}

class ReadAssetFileState extends State<ReadAssetFile> {
  String filePath = "assets/context.txt";
  String fileText = "";

  readFile() async {
    String text = await rootBundle.loadString(filePath);
    setState(() {
      fileText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("You Can Win - Reading",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
      ),
       backgroundColor: Colors.amber,
      ),
      
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: <Widget>[
                
                Container(width: 10),
                customButton("Chapters", () {
                  readFile();
                },
                
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey, width: 1)),
              child: Center(
                child: SingleChildScrollView(
                  child: Text(
                    fileText,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  customTextContainer(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(5)),
      child: Text(text),
    );
  }

  customButton(String text, Null Function() onPressed) {
    return SizedBox(
      height: 30,
      width: 60,
      child: FlatButton(
        padding: const EdgeInsets.all(0),
        color: Colors.blue,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: TextStyle(fontSize: 13),
        ),
        onPressed: onPressed,
      ),
    );
  }
}