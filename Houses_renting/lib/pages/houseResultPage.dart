import 'package:Houses_renting/models/housesRentingModels.dart';
import 'package:Houses_renting/widgets/FindHouseCarousel.dart';
import 'package:flutter/material.dart';


class HouseResultPage extends StatefulWidget {
 HouseResultPage({Key key}) : super(key: key);

  @override
   HouseResultPageState createState() =>  HouseResultPageState();
}
 
  
  //monDic.forEach((e,v)=>maliste.add(OderList(e,v)));
 
class  HouseResultPageState extends State <HouseResultPage> {
  
  List<Object> maliste=[{luc.date:Icon(Icons.date_range)},{luc.guest:Icon(Icons.person)},{luc.works:Icon(Icons.work),}];
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
         Padding(
           padding: EdgeInsets.all(20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                 children: <Widget>[
                   Container(
                     width: 110,
                     height: 35,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                       color: Color(0xf6f7f9),
                     ),
                     child: Row(
                       children: <Widget>[
                         IconButton(
                           icon:Icon(Icons.sort , color: Colors.black,size:15.0) ,
                           onPressed: null
                           ),
                           Text(
                             "FILTERS" ,
                             style: TextStyle(
                               fontWeight:FontWeight.bold,
                               fontSize: 13.0
                               ),
                             ),
                       ],
                     ),
                   )
                 ],
               ),
               SizedBox(height:15.0),
              Text(
                "Stays".toUpperCase(),
                style:TextStyle(
                  fontWeight:FontWeight.w600,
                  fontSize: 15.0,
                  color:Colors.grey
                )
                ) ,
                SizedBox(height:20.0),
              Text(
                luc.town,
                style: TextStyle(
                  fontSize: 27.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                ),
               
             ],
           ),
         ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0 ),
          child: Container(
            height: 30,
            width: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:myList.length,
              itemBuilder: (context , int index){
                
                return Padding(
                  padding: const EdgeInsets.only(left:4.0),
                  child: Container(
                    width: 130,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.all(Radius.elliptical(40, 40)),
                      border: Border.all(width: 3.0 , color: Color(0Xfff4f5f6) , style: BorderStyle.solid),
                      boxShadow: [BoxShadow(color: Color(0xf5f5f6) , offset: Offset(1.0,3.0))]
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        myList[index].key, 
                        Text(
                          myList[index].value.toString()
                        )  
                      ],
                    )
                  ),
                );
              }
              ),
          ),
        ),
        Container(
           width: MediaQuery.of(context).size.width,
           height: 300,
          child: HouseCarouselFind()
          ),       
      ],
    );
  }
}