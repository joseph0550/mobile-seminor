import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '자기 소개'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
TextEditingController _controller = TextEditingController(
);
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
            const Text(
              '자신의 이름을 입력하세요:',
            ),

          SizedBox(height: 50,),

            TextField(
              controller: _controller,
              onChanged: (str){
                setState(() {

                });
              },
            ),
            Text("저의 이름은 ${_controller.text} 입니다."),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return SecondScreen();
              }));
            },child: Text("다음 화면")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}



class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key, }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}
  class _SecondScreenState extends State<SecondScreen> {
  TextEditingController _controller1 = TextEditingController(
  );
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("자신의 나이를 적으세요."),
            TextField(
              controller: _controller1,
              onChanged: (str){
                setState(() {
                });
              },
            ),
            Text("저의 나이는 ${_controller1.text}살 입니다."),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return thirdScreen();
              }));
            },child: Text("다음 화면")),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.keyboard_backspace)),
          ],
        ),
      ),
    );
  }
  }

class thirdScreen extends StatefulWidget {
  const thirdScreen({Key? key, }) : super(key: key);

  @override
  State<thirdScreen> createState() => _thirdScreenState();
}
class _thirdScreenState extends State<thirdScreen> {
  TextEditingController _controller2 = TextEditingController(
  );
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("자신의 이상형을 적으세요."),
            TextField(
              controller: _controller2,
              onChanged: (str){
                setState(() {
                });
              },
            ),
            Text("저의 이상형은 ${_controller2.text}사람 입니다."),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return fourthScreen();
              }));
            },child: Text("다음 화면")),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.keyboard_backspace)),
          ],
        ),
      ),
    );
  }
}
class fourthScreen extends StatefulWidget {
  const fourthScreen({Key? key, }) : super(key: key);

  @override
  State<fourthScreen> createState() => _fourthScreenState();
}
class _fourthScreenState extends State<fourthScreen> {
  TextEditingController _controller3 = TextEditingController(
  );
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("자신이 좋아하는 운동을 적으세요."),
            TextField(
              controller: _controller3,
              onChanged: (str){
                setState(() {
                });
              },
            ),
            Text("제가 좋아하는 운동은 ${_controller3.text} 입니다."),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return fivethScreen();
              }));
            },child: Text("다음 화면")),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.keyboard_backspace)),
          ],
        ),
      ),
    );
  }
}
class fivethScreen extends StatefulWidget {
  const fivethScreen({Key? key, }) : super(key: key);

  @override
  State<fivethScreen> createState() => _fivethScreenState();
}
class _fivethScreenState extends State<fivethScreen> {
  TextEditingController _controller4 = TextEditingController(
  );
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("자신의 MBTI를 적으세요."),
            TextField(
              controller: _controller4,
              onChanged: (str){
                setState(() {
                });
              },
            ),
            Text("저의 MBTI는 ${_controller4.text} 입니다."),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return sixthScreen();
              }));
            },child: Text("다음 화면")),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.keyboard_backspace)),
          ],
        ),
      ),
    );
  }
}
class sixthScreen extends StatefulWidget {
  const sixthScreen({Key? key, }) : super(key: key);

  @override
  State<sixthScreen> createState() => _sixthScreenState();
}
class _sixthScreenState extends State<sixthScreen> {
  TextEditingController _controller5 = TextEditingController(
  );
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("자신이 좋아하는 음악을 적으세요."),
            TextField(
              controller: _controller5,
              onChanged: (str){
                setState(() {
                });
              },
            ),
            Text("제가 좋아하는 음악은 ${_controller5.text} 입니다."),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return seventhScreen();
              }));
            },child: Text("다음 화면")),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.keyboard_backspace)),
          ],
        ),
      ),
    );
  }
}
class seventhScreen extends StatefulWidget {
  const seventhScreen({Key? key, }) : super(key: key);

  @override
  State<seventhScreen> createState() => _seventhScreenState();
}
class _seventhScreenState extends State<seventhScreen> {
  TextEditingController _controller6 = TextEditingController(
  );
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("자신이 좋아하는 음식을 적으세요."),
            TextField(
              controller: _controller6,
              onChanged: (str){
                setState(() {
                });
              },
            ),
            Text("제가 좋아하는 음식은 ${_controller6.text} 입니다."),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return eighthScreen();
              }));
            },child: Text("다음 화면")),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.keyboard_backspace)),
          ],
        ),
      ),
    );
  }
}
class eighthScreen extends StatefulWidget {
  const eighthScreen({Key? key, }) : super(key: key);

  @override
  State<eighthScreen> createState() => _eighthScreenState();
}
class _eighthScreenState extends State<eighthScreen> {
  TextEditingController _controller7 = TextEditingController(
  );
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("자신이 좋아하는 영화를 적으세요."),
            TextField(
              controller: _controller7,
              onChanged: (str){
                setState(() {
                });
              },
            ),
            Text("제가 좋아하는 영화는 ${_controller7.text} 입니다."),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.keyboard_backspace)),
          ],
        ),
      ),
    );
  }
}
