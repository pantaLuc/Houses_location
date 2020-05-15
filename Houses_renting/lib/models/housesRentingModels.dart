
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HouseRenting{
  String description;
  String imgUrl; // suppose to be a list but not having enough ressources .
  String country ;
  String town;
  List<String> amenities;
  Map<String ,int> caracteristique;
  bool isliked;
  double grade;
  bool isAvailabled;//Must be done with a function
  String type;
  HouseRenting({
    this.description,
    this.imgUrl,
    this.country,
    this.town,
    this.amenities,
    this.caracteristique,
    this.isliked=false,
    this.grade,
    this.isAvailabled=true,
    this.type
  });
}

class OderClient{
  String date;
  String guest;
  String works;
  String country ;
  String town ;
  OderClient({
    this.date,
    this.guest,
    this.works,
    this.country,
    this.town,
  });
  List<HouseRenting> findHouseAvaible(List<HouseRenting> housesRenting){
     List<HouseRenting> house;
     housesRenting.forEach((element) {
       if(element.isAvailabled){
          house.add(element);
       }
     }) ;
    return house;
  }
}
//OrderClient

OderClient luc=OderClient(
  country: "Cameroon",
  guest:"Guest-7",
  town: "Bangou City",
  date:"Nov 4 - dec 5",
  works: "Works "
);





// HousesRentings Examples 

List<HouseRenting> housesrentings=[
  HouseRenting(
    imgUrl: "assets/images/m1.jpg",
    description: "Houses with stones in a Bangou Village",
    country: "Cameroun",
    town:"Bangou",
    amenities: ["Wifi","TV","garden","Gym"],
    caracteristique: {"Guests":7,"BedsRooms":4,"beds":5,"baths":3},
    type: "SuperHost",
    grade: 3.1
  ),
  HouseRenting(
    imgUrl: "assets/images/m2.jpg",
    description: "Architects House in a Bangou Carrefour",
    country: "Cameroun",
    town:"Bangou",
    amenities: ["Wifi","TV","garden","Gym"],
    caracteristique: {"Guests":4,"BedsRooms":2,"beds":2,"baths":2},
    type: "SuperPlus",
    grade: 4.0
  ),
  HouseRenting(
    imgUrl: "assets/images/m3.jpg",
    description: "Modern And Tranditional house in Bangou center ",
    country: "Cameroun",
    town:"Bangou",
    amenities: ["Wifi","TV","garden","Gym"],
    caracteristique: {"Guests":6,"BedsRooms":3,"beds":5,"baths":3},
    type: "SuperHost",
    grade: 4.1
  ),
  HouseRenting(
    imgUrl: "assets/images/m4.jpg",
    description: "Amazing Architectural house in a Bangou Carrefour",
    country: "Cameroun",
    town:"Bangou",
    amenities: ["Wifi","TV","garden","Gym"],
    caracteristique: {"Guests":10,"BedsRooms":7,"beds":11,"baths":7},
    type: "Superplus",
    grade: 4.2
  ),
];

class Helper{
  var key ;
  var value;

  Helper({
    this.key,
    this.value
  });
}

Map<Icon,Object> myMap ={
  Icon(Icons.date_range, color: Color(0xffff6161),):luc.date,
  Icon(Icons.person, color: Color(0xffff6161)):luc.guest,
  Icon(Icons.work, color: Color(0xffff6161),):luc.works,
};

List<Helper> myList = myMap.entries.map((e) => Helper(key: e.key,value: e.value)).toList();
