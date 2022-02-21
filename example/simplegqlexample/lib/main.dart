import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}



/* 

import 'package:simple_gql/simple_gql.dart';

void main() async {
  try {
    final response = await GQLClient(
      'https://graphqlzero.almansi.me/api',
    ).query(
      query: r'''
        query todos($options: PageQueryOptions) {
          todos(options: $options) {
            data {
              id
              title
              completed
              user {
                id
                username
                website
              }
            }
          }
        }
      ''',
      variables: {
        'options': {
          'paginate': {
            'page': 0,
            'limit': 1,
          },
        },
      },
    );
    print('Yay, success ! :D');
    print(response);
  } on GQLError catch (e) {
    print('Ouch ! :(');
    print(e);
  } catch (e) {
    print('Probably a network error');
    print(e);
  }
}



 */