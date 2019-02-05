import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

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
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _result = 0;
  int _temp = 0;
  int primary = 0;
  int secondary = 0;
  int op = 0;
  bool state = true;
  
  void _toast(int x){
    int a = x;
    if(x == 10){
       setState(() {
     _result = 0;
     primary = 0;
     secondary = 0;
     _temp = 0;
    });
    return;
    }

    if(x == 20){
      switch (op) {
        case 30: _temp = primary + secondary;
                  break;
        case 40: _temp = primary - secondary;
                  break;
        case 50: _temp = primary * secondary;
                  break;
        case 60: _temp = primary ~/ secondary;
                  break;
        default:
      }
      setState(() {
    _result = _temp;
  });
      return;
    }
    
     if(x==30 || x==40 || x==50 || x==60 || x==70 || x==80){
     state = !state;
     op = x;
     _temp = 0;
  }else{
    _temp = _temp * 10 + a;
      if(state){
        primary = _temp;
      }else{
        secondary = _temp;
      }
  }
  setState(() {
    _result = _temp;
    primary;
    secondary;
  });
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
      Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20.0),
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
         Center(
           child: Text(
              "Output : $_result\n$primary\n$secondary",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ) ,
         ), 
         Padding(child: null, padding: EdgeInsets.all(70.0),),
        
              MaterialButton(child: Text('C',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(10),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('=',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(20),color: Colors.blue,padding: EdgeInsets.all(20.0),),
             
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(child: Text('1',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(1),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('2',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(2),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('3',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(3),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('+',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(30),color: Colors.blue,padding: EdgeInsets.all(20.0),),
            ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(child: Text('4',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(4),color:Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('5',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(5),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('6',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(6),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('-',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(40),color: Colors.blue,padding: EdgeInsets.all(20.0),),
            ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(child: Text('7',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(7),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('8',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(8),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('9',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(9),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('*',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(50),color: Colors.blue,padding: EdgeInsets.all(20.0),),
            ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(child: Text('.',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(80),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('0',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(0),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('~',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(70),color: Colors.blue,padding: EdgeInsets.all(20.0),),
              MaterialButton(child: Text('/',style: TextStyle(fontFamily: 'Roboto',color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),onPressed: () => _toast(60),color: Colors.blue,padding: EdgeInsets.all(20.0),),
            ],
          ),
        ],
      ),
      ),
      
    );
  }
}
