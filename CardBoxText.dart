import 'package:cv/MyColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBoxText extends StatefulWidget {
  final text ;
  final icon ;

  CardBoxText({required this.text ,required this.icon});



  @override
  _CardBoxTextState createState() => _CardBoxTextState();
}

class _CardBoxTextState extends State<CardBoxText> {

  @override

  Widget build(BuildContext context) {
    return  Card(

                 margin: EdgeInsets.fromLTRB(60, 20, 60, 20),
                 shadowColor: MyColor.red , color: MyColor.black,
                  child:  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(

                         mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Icon(widget.icon,color: MyColor.beige, ),
                          SizedBox(
                            width:15,

                          ),
                          Text(widget.text , textAlign: TextAlign.center ,style: TextStyle(color: MyColor.white,fontSize: 15,fontWeight: FontWeight.w600,),)

                    ]
                    ),
                  )

              );

  }
}
