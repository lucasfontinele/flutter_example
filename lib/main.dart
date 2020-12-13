import 'package:flutter/material.dart';
import 'widgets/question_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Minha primeira aplicação Flutter', counterPressed: 0),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.counterPressed}) : super(key: key);

  final String title;

  final int counterPressed;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counterPressed = 0;
  int currentQuestion = 0;
  final List<Question> questions = [];

  List<Map<String, Object>> options = [
    {
      'title': 'Você gosta de uva?',
      'answers': ['Sim', 'Não', 'Depende'],
    },
    {
      'title': 'Você gosta de maçã?',
      'answers': ['Sim', 'Não', 'Depende'],
    },
    {
      'title': 'Você gosta de tomate?',
      'answers': ['Sim', 'Não', 'Depende'],
    }
  ];

  void incrementCounter() {
    this.setState(() {
      counterPressed++;
    });

    // ignore: unnecessary_brace_in_string_interps
    print('Você pressionou o botão $counterPressed vezes!');
  }

  @override
  Widget build(BuildContext context) {
    // List<Widget> questions = options[0]['answers'].map((t) => Question(t)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                child: Text('Bem-vindo ao teste, uma plataforma incrível'),
                margin: const EdgeInsets.only(top: 35.0, bottom: 20.0),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Column(
            children: [
              ...questions,
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => incrementCounter(),
        tooltip: 'Increment',
        child: Icon(Icons.favorite_outline),
        backgroundColor: Colors.red,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
