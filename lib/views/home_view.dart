import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomfinder/core/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomeView',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Text("hello"),
      ),
    );
  }
}

// class SearchPage extends StatefulWidget {
//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   // Screen size;
//   int _selectedIndex = -1;
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//   // List<Property> recentList =  List();
//   // List<Property> topList =  List();
//   var citiesList = [
//     "Ahmedabad",
//     "Mumbai",
//     "Anand",
//     "Delhi ",
//     "Vadodara",
//     "Chennai",
//     "Goa",
//     "Kolkata",
//     "Indore",
//     "Jaipur"
//   ];
//   Image image1;
//   String docRef;
//   String isLoggedIn;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: AnnotatedRegion(
//         value: SystemUiOverlayStyle(
//             statusBarColor: Colors.blue,
//             statusBarBrightness: Brightness.dark,
//             statusBarIconBrightness: Brightness.dark,
//             systemNavigationBarIconBrightness: Brightness.dark,
//             systemNavigationBarColor: Colors.blue),
//         child: Container(
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[upperPart()],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget upperPart() {
//     return Stack(
//       children: <Widget>[
//         ClipPath(
//           // clipper: UpperClipper(),
//           child: Container(
//             height: size.getWidthPx(240),
//             decoration: BoxDecoration(
//                 // gradient: LinearGradient(
//                 // colors: [colorCurve, colorCurve],
//                 // ),
//                 ),
//           ),
//         ),
//         Column(
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.only(top: size.getWidthPx(36)),
//               child: Column(
//                 children: <Widget>[
//                   titleWidget(),
//                   SizedBox(height: size.getWidthPx(1)),
//                   upperBoxCard(),
//                 ],
//               ),
//             ),
//             postHouse(),
//             leftAlignText(
//                 text: "Top Trending",
//                 leftPadding: size.getWidthPx(16),
//                 // textColor: textPrimaryColor,
//                 fontSize: 16.0),
//             // HorizontalList(
//             //   children: <Widget>[
//             //     for (int i = 0; i < topList.length; i++)
//             //       propertyCard(topList[i])
//             //   ],
//             // ),
//             leftAlignText(
//                 text: "Recently Added",
//                 leftPadding: size.getWidthPx(16),
//                 // textColor: textPrimaryColor,
//                 fontSize: 16.0),
//             // HorizontalList(
//             //   children: <Widget>[
//             //     for (int i = 0; i < recentList.length; i++)
//             //       propertyCard(recentList.toList()[i])
//             //   ],
//             // ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget postHouse() {
//     return Card(
//       margin: EdgeInsets.symmetric(
//           horizontal: size.getWidthPx(20), vertical: size.getWidthPx(10)),
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: InkWell(
//         child: Container(
//           height: size.getWidthPx(270),
//           child: Container(
//             child: Column(
//               children: <Widget>[
//                 Container(
//                   padding: new EdgeInsets.only(top: size.getWidthPx(15)),
//                   child: Center(
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         'Searching of a new tenant',
//                         style: TextStyle(
//                           fontFamily: 'Exo2',
//                           fontSize: size.getWidthPx(17),
//                           fontWeight: FontWeight.w700,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: Center(
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         'for your property?',
//                         style: TextStyle(
//                           fontFamily: 'Exo2',
//                           fontSize: size.getWidthPx(17),
//                           fontWeight: FontWeight.w700,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: size.getWidthPx(3),
//                 ),
//                 Container(
//                   child: Image.asset(
//                     'assets/post_house.png',
//                     fit: BoxFit.fitWidth,
//                     width: size.wp(100),
//                   ),
//                 ),
//                 Container(
//                   padding: new EdgeInsets.fromLTRB(size.getWidthPx(15), 0,
//                       size.getWidthPx(15), size.getWidthPx(6)),
//                   child: SizedBox(
//                     width: double.infinity,
//                     child: new RaisedButton(
//                       color: Colors.blue[700],
//                       colorBrightness: Brightness.dark,
//                       child: Text('Post free property ad'),
//                       onPressed: () {},
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget titleWidget() {
//     return Row(
//       children: <Widget>[
//         IconButton(
//           padding: new EdgeInsets.fromLTRB(1, 1, 0, 0),
//           icon: Icon(
//             Icons.menu,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             _scaffoldKey.currentState.openDrawer();
//           },
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 "Which type of house",
//                 style: TextStyle(
//                     fontFamily: 'Exo2',
//                     fontSize: size.getWidthPx(24),
//                     fontWeight: FontWeight.w900,
//                     color: Colors.white),
//                 textAlign: TextAlign.center,
//               ),
//               Text(
//                 "are you looking for?",
//                 style: TextStyle(
//                     fontFamily: 'Exo2',
//                     fontSize: size.getWidthPx(24),
//                     fontWeight: FontWeight.w900,
//                     color: Colors.white),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Card upperBoxCard() {
//     return Card(
//         elevation: 4.0,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//         margin: EdgeInsets.symmetric(
//             horizontal: size.getWidthPx(20), vertical: size.getWidthPx(0)),
//         borderOnForeground: true,
//         child: Container(
//           height: size.getWidthPx(150),
//           child: Column(
//             children: <Widget>[
//               GestureDetector(
//                 child: Center(
//                   child: Hero(
//                     tag: 'searcHero',
//                     child: _searchWidget(),
//                   ),
//                 ),
//                 onTap: () {},
//               ),
//               leftAlignText(
//                   text: "Top Cities :",
//                   leftPadding: size.getWidthPx(16),
//                   // textColor: textPrimaryColor,
//                   fontSize: 16.0),
//             ],
//           ),
//         ));
//   }

//   Widget _searchWidget() {
//     var height = MediaQuery.of(context).size.height;
//     return Container(
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Expanded(
//             child: Container(
//                 margin: EdgeInsets.only(top: height / 400),
//                 padding: EdgeInsets.all(size.getWidthPx(0)),
//                 alignment: Alignment.center,
//                 height: size.getWidthPx(40),
//                 decoration: BoxDecoration(
//                     color: Colors.grey.shade100,
//                     border: Border.all(color: Colors.grey.shade400, width: 1.0),
//                     borderRadius: BorderRadius.circular(8.0)),
//                 child: Row(
//                   children: <Widget>[
//                     SizedBox(
//                       width: size.getWidthPx(10),
//                     ),
//                     // Icon(Icons.search,color: colorCurve),
//                     Text("Search by city, area or locality")
//                   ],
//                 )),
//           ),
//         ],
//       ),
//       padding: EdgeInsets.only(bottom: size.getWidthPx(8)),
//       margin: EdgeInsets.only(
//           top: size.getWidthPx(8),
//           right: size.getWidthPx(8),
//           left: size.getWidthPx(8)),
//     );
//   }

//   Padding leftAlignText({text, leftPadding, textColor, fontSize, fontWeight}) {
//     return Padding(
//       padding: EdgeInsets.only(left: leftPadding),
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Text(text ?? "",
//             textAlign: TextAlign.left,
//             style: TextStyle(
//                 fontFamily: 'Exo2',
//                 fontSize: fontSize,
//                 fontWeight: fontWeight ?? FontWeight.w500,
//                 color: textColor)),
//       ),
//     );
//   }

//   Card propertyCard(Property property) {
//     return Card(
//       elevation: 4.0,
//       margin: EdgeInsets.all(8),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       borderOnForeground: true,
//       child: Container(
//         height: size.getWidthPx(150),
//         width: size.getWidthPx(170),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             ClipRRect(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(12.0),
//                     topRight: Radius.circular(12.0)),
//                 child:
//                     Image.asset('assets/${property.image}', fit: BoxFit.fill)),
//             SizedBox(height: size.getWidthPx(8)),
//             leftAlignText(
//                 text: property.propertyName,
//                 leftPadding: size.getWidthPx(8),
//                 textColor: colorCurve,
//                 fontSize: 14.0),
//             leftAlignText(
//                 text: property.propertyLocation,
//                 leftPadding: size.getWidthPx(8),
//                 textColor: Colors.black54,
//                 fontSize: 12.0),
//             SizedBox(height: size.getWidthPx(4)),
//             leftAlignText(
//                 text: NumberFormat.compactCurrency(
//                         decimalDigits: 2, symbol: '\u20b9')
//                     .format(double.parse(property.propertyPrice)),
//                 leftPadding: size.getWidthPx(8),
//                 textColor: colorCurve,
//                 fontSize: 14.0,
//                 fontWeight: FontWeight.w800),
//           ],
//         ),
//       ),
//     );
//   }

//   Padding buildChoiceChip(index, chipName) {
//     return Padding(
//       padding: EdgeInsets.only(left: size.getWidthPx(8)),
//       child: ChoiceChip(
//         backgroundColor: backgroundColor,
//         selectedColor: colorCurve,
//         labelStyle: TextStyle(
//             fontFamily: 'Exo2',
//             color:
//                 (_selectedIndex == index) ? backgroundColor : textPrimaryColor),
//         elevation: 4.0,
//         padding: EdgeInsets.symmetric(
//             vertical: size.getWidthPx(4), horizontal: size.getWidthPx(12)),
//         selected: (_selectedIndex == index) ? true : false,
//         label: Text(chipName),
//         onSelected: (selected) {
//           if (selected) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           }
//         },
//       ),
//     );
//   }
// }
