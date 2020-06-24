import 'package:flutter/material.dart';

void main() => runApp(MyApp());

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            'Pokhara City',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text('Gandaki-Pradesh, Nepal',
            style: TextStyle(color: Colors.grey[500])),
      ])),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);
Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(Colors.black, Icons.call, 'CALL'),
      _buildButtonColumn(Colors.black, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(Colors.black, Icons.share, 'SHARE'),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Pokhara is a city on Phewa Lake, in central Nepal.Its known as '
    'a gateway to the Annapurna Circuit,a popular trail in the Himalayas.'
    'Tal Barahi Temple, a 2-story pagoda, sits on an island in the lake. On the eastern shore,'
    'the Lakeside district has yoga centers and restaurants. In the city’s south, the International'
    'Mountain Museum has exhibits on the history of mountaineering and the people of the Himalayas. ',
    textAlign: TextAlign.left,
    softWrap: true,
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('VISIT NEPAL 2020'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/pokhara.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
