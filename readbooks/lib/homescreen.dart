
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'button1.dart';
import 'button2.dart';



class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         alignment: Alignment.topCenter,
        child: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget>[
            SizedBox(
          width: 200.0,
          height: 300.0,
          child: Card(child: Image.asset('assets/images/book.jpg'),
          ),

           ),
          SizedBox(
          width: 200.0,
          height: 75.0,
          child: Card(
          child: ListTile(
          
            title: Text('YOU CAN WIN' ,style: TextStyle(
            fontSize: 20.0, 
            fontWeight: FontWeight.bold,
            color: Colors.black,
            
            
          ),
          ),
            subtitle:  Text('A step by step tool for top achievers' ,style: TextStyle(
            fontSize: 12.0, 
            fontWeight: FontWeight.normal,
            color: Colors.black,
            fontFamily: "Caveat",
                    
          ),
          
          ),

          trailing: Column(children: <Widget>[

            


           RatingBar(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 13.0,
                  
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                                        
                  ),
                  
                  
                  onRatingUpdate: (rating) {
                   print(rating);
           
            },
            
            ),
            
            Text('Motivational' ,style: TextStyle(
            fontSize: 9.0, 
            fontWeight: FontWeight.normal,
            color: Colors.black,
            
            ),
            ),
           
            ],
            )
            ),
            
        
          ),   
      

           ),

          
          Card(child:
          Text('You Can Win Summary motivates people and take things right from your daily life and turns them into positive thrust. This book is for those who pursue balanced personality and who want to move towards success with positivity. This is easy to read a self-help.An easy-to-read, practical, common-sense guide that will take you from ancient wisdom to modern-day thinking, You Can Win helps you establish new goals, develop a new sense of purpose, and generate new ideas about yourself and your future. It guarantees, as the title suggests, a lifetime of success. The book enables you to translate positive thinking into attitude, ambition and action to give you the winning edge.',
          style: TextStyle(
            fontSize: 18.0, 
            fontWeight: FontWeight.normal,
            color: Colors.black38,
            fontFamily: "Caveat"
            
            ),    
          ),
          ),
          
          Row(children: <Widget>[

           
           
           Padding(
                   padding: EdgeInsets.all(20.0),
                          child: RaisedButton(
                            
                            child:Text(
                              'Read Book',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Caveat",
                                color: Colors.black,
                              ),
                            ),
                            
                            color:Colors.amber,
                            
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(50.0),
                              
                            ),
                          
                            onPressed : (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(

                                  builder: (context) =>ReadAssetFile()
                               ) );
                            }
                          ),
                          
                        ),
             Padding(
                   padding: EdgeInsets.all(30.0)),

           Padding(
                   padding: EdgeInsets.all(20.0),
                          child: RaisedButton(
                            
                            child:Text(
                              'More Info',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Caveat",
                                color: Colors.black,
                              ),
                            ),
                            
                            color:Colors.amber,
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(50.0),
                              
                            ),
                            onPressed : (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(

                                  builder: (context) =>moreinfo(),
                
                               ) );
                            }
                          ),
                          
                        ),
                        
          ],
          
          
      ), 
          ],
        ),
      ),
    );

        
    
  }
}