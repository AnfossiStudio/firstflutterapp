import 'package:flutter/material.dart';
import 'package:magazinstore/Screens/Home.dart';
import 'package:magazinstore/Utitlty/ColorsSchema.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff3D56F0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * .65,
              height: MediaQuery.of(context).size.width * .65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                image: DecorationImage(
                  image: AssetImage('assets/images/bg1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Magazine',
              style: TextStyle(
                color: ColorsSchema['white'],
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Most evenings I'll light a few candles, get suggled on the safa, and read a magazine.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorsSchema['white'].withOpacity(.7),
                height: 2,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              color: ColorsSchema['white'],
              child: Text(
                "Let's Start",
                style: TextStyle(
                  fontSize: 18,
                  color: ColorsSchema['primary-dark'],
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (_) => Home()
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
