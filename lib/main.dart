import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



  Future main() async
{

  serverTester();
  /*compute(
      (params) {
        serverTester();
      },
    {'data' : 'here is data'}
  );*/



  //serverTester();
  runApp(MyApp());

}


void serverTester() async
{

  void handleGet(HttpRequest request)
  {
    request.response.write('GET is Working!');

    request.response.close();
  }

  void handleRequest(HttpRequest request)
  {
    try
    {
      if(request.method == 'GET')
        handleGet(request);
    } catch(e)
    {
      print('Exception in handleRequest: $e');
    }
  }

  HttpServer server;

  try{
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 8080);

    print('Listening on localhost:${server.port}');
  }catch(e) {
    throw new Error();
    print("Something went wrong");
  }

  await for (HttpRequest request in server)
  {
    handleRequest(request);
  }



}







  class MyApp extends StatelessWidget
  {





    @override
    Widget build(BuildContext context)
    {
      return MaterialApp(
        title: 'Avalon',
        home: MyHomePage(title: 'Avalon tester')
      );


    }
  }

  class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);
    // used by the build method of the State. Fields in a Widget subclass are
    // always marked "final".

    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage>
  {
    int _counter = 0;
    String message = "no responce form server";
    String helper = "";








    void _incrementCounter() async {

      Future<String> fetchData() async {
        try {
          final response = await http.get(
              ('http://localhost:8080/'));
          print('running');
          var helper = response;

          if (response.statusCode == 200) {
          setState(() {
            message = response.body;
          });
          }
          else {
            throw Exception('Filed to load data');
          }
        } on SocketException catch(_) {
          print('not conected');
        }

      }

      fetchData().then((data)
      {

        helper = data;
      });

      //fetchData();



      setState(() {

        message = helper;

        _counter++;
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
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
              Text(
                'The server response is\n $message'
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    }
  }
