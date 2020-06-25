import 'package:flutter/material.dart';

import 'package:random_color/random_color.dart';
import 'dart:ui';

RandomColor _randomColor = RandomColor();

 





  String name = "Peach Orchids";
  String url = 'xyx/xyx.xyx';
  int likes = 234;
  int views = 876;
  

Widget _chips(String title){
  return Padding(
    padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      child: ActionChip(
        
        backgroundColor: _randomColor.randomColor(colorBrightness: ColorBrightness.light),
        label: Text(title),
        onPressed: () {
          

        }
)
  );  
}

void _settingModalBottomSheet(context){
  
  
  
    showModalBottomSheet(
      
      enableDrag: true,
      isScrollControlled: true,
      backgroundColor: Color(0xff2f2f2f),
      shape: RoundedRectangleBorder(
        
     borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight:Radius.circular(15.0) ),
  ),
      
      
      context: context,
      builder: (BuildContext bc){
          return Container(
            child: Wrap(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container( 
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      
                      
                      _chips('Cars'),
                      _chips('Porche'),
                      _chips('Racing'),
                      _chips('Auto'),
                      _chips('Red'),
                      _chips('Sceneary'),
                      _chips('Renee Gracie'),
                      
                    ]
                  ),
                ),
              ),  
              ListTile(
                
                title: Text(name,style: TextStyle(fontWeight:FontWeight.bold, fontSize: 24,fontFamily: 'Proxima Nova', color: Colors.white),),
                onTap: () => {}          
              ),
              
              Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(17, 0, 0, 5),
                    child: Text('$views views', textAlign: TextAlign.left,style: TextStyle( color:Color(0xffA6A6A6),fontSize: 20, fontFamily: 'Proxima Nova', )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(17, 0, 0, 5),
                    child: Text('$likes likes', textAlign: TextAlign.left,style: TextStyle( color:Color(0xffA6A6A6),fontSize: 20,fontFamily: 'Proxima Nova',)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(17, 0, 0, 10),
                    child: Text(url, textAlign: TextAlign.left,style: TextStyle( color:Color(0xffA6A6A6),fontSize: 18,fontFamily: 'Proxima Nova',)),
                  )
                ],
              ),
                


              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: ClipOval(
                        child: Container(
                          color: Color(0xff181818),
                          height: 50.0, // height of the button
                          width: 50.0, // width of the button
                          child: Center(child: Icon(Icons.file_download, color: Colors.white,)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        //change color to red
                        // increase like+1

                      },
                      child: ClipOval(
                        child: Container(
                          color: Color(0xff181818),
                          height: 50.0, // height of the button
                          width: 50.0, // width of the button
                          child: Center(child: Icon(Icons.crop_square, color: Colors.white,)),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: ClipOval(
                        child: Container(
                          color: Color(0xff181818),
                          height: 50.0, // height of the button
                          width: 50.0, // width of the button
                          child: Center(child: Icon(Icons.favorite, color: Colors.white,)),
                        ),
                      ),
                    ),
                    Spacer(),
                  ]
                ),
              ),
             
            ]
          ),
          );
        
      }
    );
}

class BottomSheetPage extends StatefulWidget {
  BottomSheetPage({Key key}) : super(key: key);

  @override
  _BottomSheetPageState createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  bool _isBlurred = false; 
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
      backgroundColor: Colors.red[50],
      
      body: Stack(
        alignment: Alignment.topCenter,          
        children: <Widget>[
          FlatButton(
            child: Image(
                image: NetworkImage('https://images.pexels.com/photos/1535162/pexels-photo-1535162.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
              ),
            onPressed: (){
              setState(() {  
              });
              _settingModalBottomSheet(context);
            },
          ),
          // BackdropFilter(
          //   filter: ImageFilter.blur(sigmaX: _isBlurred ? 5 : 0, sigmaY: _isBlurred ? 5 : 0),
          //     child: Container(
          //       color: Colors.black.withOpacity(0),
          //     ),
          // ),



        ],
      ),
    ),
    );
  }
}


  

  
  

