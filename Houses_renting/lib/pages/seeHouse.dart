import 'package:Houses_renting/models/housesRentingModels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SeeHouse extends StatefulWidget {
  final HouseRenting houserenting;
  SeeHouse({
    this.houserenting
  });

  @override
  _SeeHouseState createState() => _SeeHouseState();
}

class _SeeHouseState extends State<SeeHouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
                child: ListView(
           children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                    width:MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                    image:DecorationImage(
                      image:AssetImage(widget.houserenting.imgUrl),
                      fit: BoxFit.cover 
                      ),               
                  ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween   ,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios , color:Colors.white ,size:20), 
                      onPressed:()=> Navigator.pop(context),
                      ),   
                      CircleAvatar(
                       child: Icon(Icons.person), 
                      ),
                      Icon(
                        FontAwesomeIcons.stopCircle,
                        color: Colors.white,
                      )
                  ],
                ),
              ),
              )
              ],  
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffed84c9),
                                borderRadius:BorderRadius.all(Radius.elliptical(2, 2))
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top:5.0 ,left:5.0 ,right: 5.0,bottom: 5.0),
                                child: Text(
                                  widget.houserenting.type.toUpperCase() , 
                                  textAlign: TextAlign.center,
                                  style:TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                    )
                                  ),
                              )
                              ),
                              Container(
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color:Color(0Xfffff4e0),
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star ,size:15.0 , color:Color(0xfff39b0f) ),
                                        Text(
                                        "${widget.houserenting.grade}",
                                        style:TextStyle(
                                          fontSize:10.0,
                                          fontWeight: FontWeight.bold,
                                          color:Color(0xfff39b0f)
                                  )
                                ),
                              ],
                            ),
                          ),
                        ), 
                          ],
                        ) ,
                          SizedBox(width:5.0),
                        
                        Padding(
                          padding: EdgeInsets.only(left:40),
                          child: IconButton(icon: Icon(Icons.favorite_border,color:Colors.black ),onPressed: null),
                        )
                      ]
                    ),
                  Text(
                    widget.houserenting.description , 
                    style:TextStyle(
                      fontSize:19,
                      fontWeight:FontWeight.bold,
                      ),
                  ),
                  SizedBox(height:10.0),
                  Row(
                    children:<Widget>[
                      Icon(FontAwesomeIcons.mapMarkerAlt,size:15 , color: Color(0xffff6161),),
                      SizedBox(width:5.0),
                      Text(widget.houserenting.town , style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w600),),
                      Text(","),
                      Text(widget.houserenting.country,style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w600),)
                    ]
                  ),
                  //Categorie
                  Container(
                    height: 100,
                    width: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.houserenting.caracteristique.length,
                      itemBuilder: (context , index){
                        List<Helper> mylist=widget.houserenting.caracteristique.entries.map((e) => Helper(key:e.key,value:e.value)).toList();
                         return Padding(
                           padding: const EdgeInsets.only(top:22.0 ,bottom: 20.0,left: 2.0),
                           child: Container(
                             width:75 ,
                            height: 10,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(10.0)),
                                border: Border.all(width: 2.0 , color: Color(0Xfff4f5f6) , style: BorderStyle.solid),
                              ),
                             child:Center(
                               child: Column(
                                 children: <Widget>[
                                   SizedBox(height:10.0),
                                   Text(mylist[index].value.toString()),
                                   SizedBox(height:1.0),
                                   Text(mylist[index].key,style: TextStyle(fontSize:12.0,color: Colors.grey)),
                                   
                                 ],
                               ),
                             ),
                           ),
                         );
                      }
                    ),
                  ),
                  //Amenities
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Text(
                        "Amenities" , 
                        style:TextStyle(
                          fontSize:15,
                          fontWeight: FontWeight.bold 
                          ),     
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children:<Widget>[
                              Container(
                                width: 40,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.all(Radius.circular(20.0)),
                                  border: Border.all(width: 3.0 , color: Color(0Xfff4f5f6) , style: BorderStyle.solid),
                                ),
                                child: Icon(Icons.wifi, color: Color(0xffff6161),size: 20.0,)
                                ),
                               Text("${widget.houserenting.amenities[0]}", style:TextStyle(fontSize: 10.0 ,fontWeight:FontWeight.bold))
                            ]
                          ),
                           Column(
                            children:<Widget>[
                              Container(
                                width: 40,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.all(Radius.circular(20.0)),
                                  border: Border.all(width: 3.0 , color: Color(0Xfff4f5f6) , style: BorderStyle.solid),
                                ),
                                child: Icon(Icons.tv, color: Color(0xffff6161),size: 20.0,)
                                ),
                               Text("${widget.houserenting.amenities[1]}", style:TextStyle(fontSize: 10.0 ,fontWeight:FontWeight.bold))
                            ]
                          ),
                          Column(
                            children:<Widget>[
                              Container(
                                width: 40,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.all(Radius.circular(20.0)),
                                  border: Border.all(width: 3.0 , color: Color(0Xfff4f5f6) , style: BorderStyle.solid),
                                ),
                                child: Icon(FontAwesomeIcons.tree, color: Color(0xffff6161),size: 20.0,)
                                ),
                               Text("${widget.houserenting.amenities[2]}", style:TextStyle(fontSize: 10.0 ,fontWeight:FontWeight.bold))
                            ]
                          ),
                          Column(
                            children:<Widget>[
                              Container(
                                width: 40,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.all(Radius.circular(20.0)),
                                  border: Border.all(width: 3.0 , color: Color(0Xfff4f5f6) , style: BorderStyle.solid),
                                ),
                                child: Icon(FontAwesomeIcons.bicycle, color: Color(0xffff6161),size: 20.0,)
                                ),
                               Text("${widget.houserenting.amenities[3]}",style:TextStyle(fontSize: 10.0 ,fontWeight:FontWeight.bold))
                            ]
                          )
                        ],
                        )
                    ]
                  )
                ], 
              ),
            )
           ],
         ),
       ),
    );
  }
}