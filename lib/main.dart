import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank screen',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

var orange = Color(0xFFfc9f6a);
var pink = Color(0xFFee528c);
var blue = Color(0xFF8bccd6);
var darkBlue = Color(0xFF60a0d7);
var valueBlue = Color(0xFF5fa0d6);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color(0xFFf7f8fc),
          child: ListView(
      children: <Widget>[
          SizedBox(
            height: 32.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Statement',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Current Balance',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      '\$4373.23',
                      style:
                          TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          ItemCard('Cards', 'Last 6 Months', '\$ 3284.00', [orange, pink]),
          SizedBox(
            height: 8.0,
          ),
          ItemCard('Bank', 'Last 6 Months', '\$ 3284.00', [blue, darkBlue]),
          SizedBox(
            height: 32.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Transactions',
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.6), fontSize: 18.0),
                ),
                Text(
                  'View all',
                  style:
                      TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                    SizedBox(height: 16.0,),
                    ValueCard('Bank America','\$ 3284.00','12-03-2019','DBBL - City bank',),
                    ValueCard('Bank America','\$ 64.00','12-03-2019','DBBL - City bank',),
                    ValueCard('Bank America','\$ 6532.21','12-03-2019','DBBL - City bank',),
                    ValueCard('Bank America','\$ 258.00','12-03-2019','DBBL - City bank',),
                    ValueCard('Bank America','\$ 533.20','12-03-2019','DBBL - City bank',),
                    ValueCard('Bank America','\$ 3335','12-03-2019','DBBL - City bank',),
                    ValueCard('Bank America','\$ 520','12-03-2019','DBBL - City bank',),
                ],
              ),
            ),
          )
      ],
    ),
        ));
  }
}

class ValueCard extends StatelessWidget {
  final name;
  final value;
  final date;
  final bank;
  ValueCard(this.name,this.value,this.date, this.bank);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.6)),
                ),
                Text(
                  value,
                  style: TextStyle(
                      color: valueBlue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,),
                )
              ],
            ),
            SizedBox(
              height: 4.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  date,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  bank,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(height: 4.0,),
            Divider()
          ],
        ));
  }
}

class ItemCard extends StatelessWidget {
  final titel;
  final subtitle;
  final value;
  final colors;
  ItemCard(this.titel, this.subtitle, this.value, this.colors);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: colors),
            borderRadius: BorderRadius.circular(4.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titel,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Text(
              value,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
