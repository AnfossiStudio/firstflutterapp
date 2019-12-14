import 'package:flutter/material.dart';

class CommentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5f9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Comments',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        centerTitle: true,
        leading: SizedBox.shrink(),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            color: Colors.black,
            iconSize: 26,
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: ListView.builder(
              itemBuilder: (_, index) {
                return Comment();
              },
              itemCount: 40,
              primary: false,
              shrinkWrap: true,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(.4),
                    blurRadius: 20,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Comments',
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                        ),
                      ),
                      autofocus: false,
                      keyboardType: TextInputType.multiline,
                      maxLines: 1,
                    ),
                    flex: 5,
                  ),
                  Flexible(
                      child: IconButton(
                    color: Color(0xff3D56F0),
                    icon: Icon(
                      Icons.send,
                      size: 28,
                    ),
                    onPressed: () {},
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Comment extends StatelessWidget {
  Widget Rating([size = 18.0, fontSize = 10.0]) {
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
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '/5',
                style: TextStyle(
                  color: Color(0xffb3b9c0),
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Mohamed Anfossi',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87.withOpacity(.8)),
                    ),
                    Rating(14.0, 12.0),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ",
                style: TextStyle(color: Colors.black87),
              ),
            )
          ],
        ),
      ),
    );
  }
}
