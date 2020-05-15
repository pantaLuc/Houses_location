import 'package:Houses_renting/models/housesRentingModels.dart';
import 'package:Houses_renting/pages/seeHouse.dart';
import 'package:flutter/material.dart';

class HouseCarouselFind extends StatelessWidget {
  const HouseCarouselFind({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: housesrentings.length,
      itemBuilder: (context , int index){
        HouseRenting houserenting=housesrentings[index];
        return Padding(
          padding: EdgeInsets.only(top:8.0 ,bottom: 5.0),
          child: Container(
            child:GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeHouse(houserenting: houserenting))),
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Container(
                  width: 130,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(topRight:Radius.circular(20),bottomRight:Radius.circular(20))
                  ),
                  child: ClipRRect(
                    borderRadius:BorderRadius.only(topRight:Radius.circular(20),bottomRight:Radius.circular(20)),
                        child: Image(
                      image:AssetImage(houserenting.imgUrl),
                      fit: BoxFit.cover,
                      ),
                  )
                  ),
                  SizedBox(width:12.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    //House renting
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffed84c9),
                            borderRadius:BorderRadius.all(Radius.elliptical(2, 2))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top:5.0 ,left:5.0 ,right: 5.0,bottom: 5.0),
                            child: Text(
                              houserenting.type.toUpperCase() , 
                              textAlign: TextAlign.center,
                              style:TextStyle(
                                fontSize: 10.0,
                                color: Colors.white,
                                )
                              ),
                          )
                          ) ,
                          SizedBox(width:5.0),
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
                                "${houserenting.grade}",
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
                        Padding(
                          padding: EdgeInsets.only(left:40),
                          child: IconButton(icon: Icon(Icons.favorite_border,color:Colors.black ),onPressed: null),
                        )
                      ]
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        houserenting.description , 
                        style:TextStyle(
                          fontSize:13,
                          fontWeight:FontWeight.bold,
                          ),
                          maxLines: 2,
                        
                        )
                      ),
                      SizedBox(height:10),
                      Row(
                        children: <Widget>[
                          Text(
                            houserenting.town
                          ),
                          Text(","),
                          Text(houserenting.country)
                          
                      ],
                      )
                  ]
                )
              ],
              ),
            )
          ),
        );
      }
      );
  }
}