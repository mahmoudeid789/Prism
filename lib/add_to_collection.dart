import 'package:flutter/material.dart';
//import 'package:dot_border/dot_border.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AddToCollection();
  }
}

class AddToCollection extends StatefulWidget {
  @override
  _AddToCollectionState createState() => _AddToCollectionState();
}

class _AddToCollectionState extends State<AddToCollection> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(16.0)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.pinimg.com/236x/c7/87/2e/c7872e30bba84f20f798c754790f4b53--red-tree-pink-trees.jpg'),
                            ),
                          ),
                        ),
                        new Positioned(
                          top: 20.0,
                          child: Container(
                            height: 140,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://www.gardeningknowhow.com/wp-content/uploads/2011/07/plant-400x267.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              /*Column(
                children: <Widget>[
                  container3,
                ],
              ),*/
            ],
          ),
        ),
      ),
    );
  }

/*Widget get container3 {
    return DottedBorder(
      padding: EdgeInsets.all(4),
      borderType: BorderType.RRect,
      radius: Radius.circular(20),
      child: Container(
        child: Icon(Icons.add),
        height: 150,
        width: 160,
        decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          color: Colors.white,
        ),
      ),
    );
  }*/
}
