import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class Layout extends StatefulWidget {
  createState() => new LayoutState();
}

class LayoutState extends State<Layout> {
//  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _savedStr = new Set<String>();

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    Widget _titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget _buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget _textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    Widget _buildRow(WordPair pair) {
      final alreadySaved = _saved.contains(pair);
      return new ListTile(
        title: new Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
        trailing: new Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
        onTap: () {
          setState(
                () {
              if (alreadySaved) {
                _saved.remove(pair);
              } else {
                _saved.add(pair);
              }
            },
          );
        },
      );
    }

    Widget _buildRowStr(String str) {
      final alreadySaved = _savedStr.contains(str);
      return new ListTile(
        title: new Text(
          str,
          style: _biggerFont,
        ),
        trailing: new Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
        onTap: () {
          setState(
                () {
              if (alreadySaved) {
                _savedStr.remove(str);
              } else {
                _savedStr.add(str);
              }
            },
          );
        },
      );
    }

    void _pushSaved() {
      Navigator.of(context).push(
        new MaterialPageRoute(
          builder: (context) {
            final tiles = _savedStr.map(
                  (pair) {
                return new ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: new Text(
                    pair,
                    style: _biggerFont,
                  ),
                );
              },
            );
            final divided = ListTile
                .divideTiles(
              context: context,
              tiles: tiles,
            )
                .toList();
            return new Scaffold(
              appBar: new AppBar(
                title: new Text('Saved Suggestions'),
              ),
              body: new ListView(children: divided),
            );
          },
        ),
      );
    }

    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.green,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Top Lakes'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed: _pushSaved),
            new IconButton(icon: new Icon(Icons.add), onPressed: _pushSaved),
          ],
        ),
        body: new ListView(
          children: [
            new Image.asset(
              'images/logo.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.fitWidth,
            ),
            _titleSection,
            _buttonSection,
            _textSection,
            _buildRowStr('Hello World 1'),
            _buildRowStr('Hello World 2'),
            _buildRowStr('Hello World 3'),
            _buildRowStr('Hello World 4'),
            _buildRowStr('Hello World 5'),
            _buildRowStr('Hello World 6'),
            _buildRowStr('Hello World 7'),
            _buildRowStr('Hello World 8'),
            _buildRowStr('Hello World 9'),
            _buildRowStr('Hello World 10'),
//            _buildRow(new WordPair.random()),
          ],
        ),
      ),
    );
  }
}