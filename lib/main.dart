import 'package:nutritionapp/hawa.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:nutritionapp/detailsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Healthy',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Food',
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 45.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height - 300.0,
                          child: ListView(
                            children: [
                              _buildFoodItem(
                                  'assets/plate1.png', 'Salmon Bowl', 'Rs.400'),
                              _buildFoodItem(
                                  'assets/plate2.png', 'Spring Bowl', 'Rs.500'),
                              _buildFoodItem('assets/plate3.png',
                                  'Avocado Bowl', 'Rs.600'),
                              _buildFoodItem(
                                  'assets/plate4.png', 'Berry Bowl', 'Rs.700'),
                              _buildFoodItem(
                                  'assets/plate5.png', 'Hachu Bowl', 'Rs.800'),
                            ],
                          ))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 65.0,
                        width: 65.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                          height: 65.0,
                          width: 65.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0)),
                          child: Center(child: Icon(Icons.shopping_basket))),
                      Container(
                          height: 65.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                              child: Text(
                            'Checkout',
                            style: TextStyle(
                                fontFamily: 'Montserrat', color: Colors.white),
                          ))),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

_buildFoodItem(String imgPath, String foodName, String price)
  return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => abc(),
                ));
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //       builder: (context) => DetailsPage(
            //           heroTag: imgPath, foodName: foodName, foodPrice: price)),
            // );
          },
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Hero(
                          tag: imgPath,
                          child: Image(
                            image: AssetImage(imgPath),
                            fit: BoxFit.cover,
                            height: 80.0,
                            width: 75.0,
                          )),
                      SizedBox(width: 10.0),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              foodName,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              price,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontFamily: 'Montserrat'),
                            )
                          ])
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {}, color: Colors.black, icon: Icon(Icons.add))
              ])),
    );
  }


