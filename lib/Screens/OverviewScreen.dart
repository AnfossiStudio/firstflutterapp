import 'package:flutter/material.dart';
import 'package:magazinstore/Screens/Comments.dart';
import 'package:magazinstore/Screens/decription.dart';

class OverviewScreen extends StatelessWidget {
  final String image;
  final String text;
  final String date;

  OverviewScreen({
    @required this.image,
    @required this.text,
    @required this.date,
  });

  Widget Rating([size = 18.0]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.star,
              color: Color(0xfffdce37),
              size: size,
            ),
            Icon(
              Icons.star,
              color: Color(0xfffdce37),
              size: size,
            ),
            Icon(
              Icons.star,
              color: Color(0xfffdce37),
              size: size,
            ),
            Icon(
              Icons.star,
              color: Color(0xfffdce37),
              size: size,
            ),
            Icon(
              Icons.star_half,
              color: Color(0xfffdce37),
              size: size,
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        RichText(
          text: TextSpan(
              text: '4.5',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: '/5',
                    style: TextStyle(
                        color: Color(0xffb3b9c0), fontWeight: FontWeight.bold))
              ]),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xfff3f5f9),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            height: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/$image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned(
                    top: 20,
                    left: 5,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Color(0xff5468FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Back',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54.withOpacity(.4),
                              blurRadius: 20,
                              spreadRadius: 1)
                        ],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => CommentsScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 75,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54.withOpacity(.4),
                              blurRadius: 20,
                              spreadRadius: 1)
                        ],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.subject),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => DescriptionScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            date,
            style: TextStyle(
              color: Color(0xffb3b9c0),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Rating(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Actions(icon: Icons.share),
              Actions(icon: Icons.bookmark_border),
              Actions(icon: Icons.star),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black54.withOpacity(.1),
                    blurRadius: 20,
                    spreadRadius: 1,)
              ],
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Color(0xff3D56F0),
                        borderRadius: BorderRadius.circular(10),),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '\$38.00',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Spacer(),
                        MaterialButton(
                          color: Color(0xff5468FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'Buy now',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 25),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xffF3F5F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      splashColor: Colors.white,
                      tooltip: 'Add to cart',
                      icon: Icon(Icons.local_grocery_store),
                      iconSize: 32,
                      color: Color(0xff3A53F0),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Actions extends StatefulWidget {
  final IconData icon;
  bool toggle = false;

  Actions({Key key, this.icon}) : super(key: key);

  @override
  _ActionsState createState() => _ActionsState();
}

class _ActionsState extends State<Actions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: widget.toggle ? Color(0xff5468FF) : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(widget.icon),
        color: widget.toggle ? Colors.white : Color(0xff2E303F),
        onPressed: () {
          setState(() {
            widget.toggle = !widget.toggle;
          });
        },
      ),
    );
  }
}
