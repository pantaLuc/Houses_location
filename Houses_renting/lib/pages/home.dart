
import 'package:Houses_renting/pages/boostpage.dart';
import 'package:Houses_renting/pages/chatPage.dart';
import 'package:Houses_renting/pages/favorite.dart';
import 'package:Houses_renting/pages/houseResultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'accountPage.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex=0;
  List _listpages=List();
  Widget  _currentPage;

 @override
  void initState(){
    super.initState();
    _listpages
        ..add(HouseResultPage())
        ..add(FavoriteHouse())
        ..add(BootSpage())
        ..add(Chatpage())
        ..add(AccountPage());
    _currentPage=HouseResultPage();
  }
  void _changePage(int selectedindex){
    setState(() {
       _currentIndex=selectedindex;
       _currentPage=_listpages[selectedindex];
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: _currentPage,
          ),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
          bottomNavigationBar:Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: BottomNavigationBar(
              elevation: 0.0, 
               currentIndex: _currentIndex,
              items:[
                BottomNavigationBarItem(
                  icon: Container(
                     width: 40,
                     height: 40,
                     decoration: BoxDecoration(
                        color: _currentIndex==0 ? Color(0Xffff6161):Colors.transparent,
                       borderRadius:BorderRadius.all(Radius.circular(30)),
                       border: _currentIndex==0? null:
                           Border.all(width:2.0,color:Color(0Xfff4f5f6),style: BorderStyle.solid ),
                     ),
                    child: Icon(
                       FontAwesomeIcons.compass,
                        color:_currentIndex==0? Colors.white:Colors.black,
                        size:_currentIndex==0? 25.0:20.0,
                        ),
                  ),
                  title: SizedBox.shrink()
                  ),
                  BottomNavigationBarItem(
                  icon: Container(
                     width: 40,
                     height: 40,
                     decoration: BoxDecoration(
                        color: _currentIndex==1 ? Color(0Xffff6161):Colors.transparent,
                       borderRadius:BorderRadius.all(Radius.circular(30)),
                       border: _currentIndex==1? null:
                           Border.all(width:2.0,color:Color(0Xfff4f5f6),style: BorderStyle.solid ),
                     ),
                    child: Icon(
                       Icons.favorite,
                        color:_currentIndex==1? Colors.white:Colors.black,
                        size:_currentIndex==1? 25.0:20.0,
                        ),
                  ),
                  title: SizedBox.shrink()
                  ),

                  BottomNavigationBarItem(
                  icon: Container(
                     width: 40,
                     height: 40,
                     decoration: BoxDecoration(
                        color: _currentIndex==2 ? Color(0Xffff6161):Colors.transparent,
                       borderRadius:BorderRadius.all(Radius.circular(30)),
                       border: _currentIndex==2? null:
                           Border.all(width:2.0,color:Color(0Xfff4f5f6),style: BorderStyle.solid ),
                     ),
                    child: Icon(
                       FontAwesomeIcons.rocket,
                        color:_currentIndex==2? Colors.white:Colors.black,
                        size:_currentIndex==2? 25.0:20.0,
                        ),
                  ),
                  title: SizedBox.shrink()
                  ),
                  BottomNavigationBarItem(
                  icon: Container(
                     width: 40,
                     height: 40,
                     decoration: BoxDecoration(
                        color: _currentIndex==3 ? Color(0Xffff6161):Colors.transparent,
                       borderRadius:BorderRadius.all(Radius.circular(30)),
                       border: _currentIndex==3? null:
                           Border.all(width:2.0,color:Color(0Xfff4f5f6),style: BorderStyle.solid ),
                     ),
                    child: Icon(
                       FontAwesomeIcons.sms,
                        color:_currentIndex==3? Colors.white:Colors.black,
                        size:_currentIndex==3? 25.0:20.0,
                        ),
                  ),
                  title: SizedBox.shrink()
                  ),
                  BottomNavigationBarItem(
                  icon: Container(
                     width: 40,
                     height: 40,
                     decoration: BoxDecoration(
                        color: _currentIndex==4 ? Color(0Xffff6161):Colors.transparent,
                       borderRadius:BorderRadius.all(Radius.circular(30)),
                       border: _currentIndex==4? null:
                           Border.all(width:2.0,color:Color(0Xfff4f5f6),style: BorderStyle.solid ),
                           
                     ),
                    child: Icon(
                       Icons.person,
                        color:_currentIndex==4? Colors.white:Colors.black,
                        size:_currentIndex==4? 25.0:20.0,
                        ),
                  ),
                  title: SizedBox.shrink()
                  ),
                 
              ],
              onTap:(selected)=>_changePage(selected),
              ),
          )
    );
    
  }
}