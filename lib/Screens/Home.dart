import 'dart:math';

import 'package:flutter/material.dart';
import 'package:magazinstore/Screens/OverviewScreen.dart';
import 'package:magazinstore/Utitlty/ColorsSchema.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget HeadBar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'HI Anfossi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {
                    //TODO this is just a anoynymos function for me
                  },
                ),
                IconButton(
                  icon: Icon(Icons.center_focus_weak),
                  color: Colors.black,
                  onPressed: () {
                    //TODO this is just a anoynymos function for me
                  },
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget ItemCard(String image, String text , String date) {
      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (_) => OverviewScreen(image : image , text: text , date : date)
          ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(right: 14),
                width: 180,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.4),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, 5))
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/$image.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Text(
                text,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Text(
                date,
                style: TextStyle(color: Color(0xffb3b9c0), fontSize: 12),
              ),
            ),
          ],
        ),
      );
    }

    Widget TabSelectedItem(String text, [bool selcted = false]) {
      return Expanded(
        flex: 1,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          color: Colors.white,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: selcted ? Colors.black : Colors.black.withOpacity(.4),
            ),
          ),
        ),
      );
    }

    Widget TabSelected() {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.2),
                spreadRadius: -10,
                blurRadius: 20,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TabSelectedItem('Newest'),
                TabSelectedItem('Popular', true),
                TabSelectedItem('Featured'),
              ],
            ),
          ));
    }

    Widget ItemsList() {

      return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 80,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg${Random().nextInt(3) + 1}.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Shining Flowers',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '10 Nov 2019',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Color(0xffb3b9c0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(0xfffdce37),
                        ),
                        Text(
                          '5.0',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.bookmark_border),
                  SizedBox(
                    height: 40,
                  ),
                  Text('\$38.00',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ));
    }

    return Scaffold(
      backgroundColor: Color(0xFFF3F5F9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: HeadBar(),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'For You',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 16,
                  ),
                  ItemCard('bg1', 'Winter Festival' , '19 Nov 2019'),
                  ItemCard('bg2', 'Freedom Life' , '20 Nov 2019'),
                  ItemCard('bg3', 'Happy Day' , '21 Nov 2019'),
                  ItemCard('bg4', 'Best Year' , '25 Nov 2019'),
                ],
              ),
            ),
            TabSelected(),
            ItemsList(),
            ItemsList(),
            ItemsList(),
            ItemsList(),
            ItemsList(),
          ],
        ),
      ),
    );
  }
}
