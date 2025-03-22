import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Almaids',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  //Praktikum 1
  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/junbDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  //Praktikum 2
  Future<int> returnOneAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 1;
  }

  Future<int> returnTwoAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 2;
  }

  Future<int> returnThreeAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  //Praktikum 3
  late Completer completer;

  Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
  }

  // Future calculate() async {
  // await Future.delayed(const Duration(seconds: 5));
  // completer.complete(42);
  // }

  calculate() async {
    try {
      await new Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
  // throw Exception();
    }
    catch (_) {
      completer.completeError({});
    }
  }

  //Praktikum 4
  void returnFG() {
    FutureGroup<int> futureGroup = FutureGroup<int>();
    futureGroup.add(returnOneAsync());
    futureGroup.add(returnTwoAsync());
    futureGroup.add(returnThreeAsync());
    futureGroup.close();
    futureGroup.future.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future - Almaids'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
          // Praktikum 1  
          //  ElevatedButton(
          //    child: Text('GO!'),
          //    onPressed: (){
          //      setState(() {});
          //      getData()
          //        .then((value) {
          //          result = value.body.toString().substring(0, 450);
          //         setState(() {});
          //        }).catchError((_){
          //          result = 'An error occurred';
          //          setState(() {});
          //        });
          //    },
          //  ),

          // Praktikum 2
          // ElevatedButton(
          //  child: Text('GO!'),
          //  onPressed: () {
          //    count();
          //  },
          // ),

          // Praktikum 3
          // ElevatedButton(
          //  child: Text('GO!'),
          //  onPressed: (){
            //  getNumber().then((value) {
            //                setState(() {
            //                  result = value.toString();
            //                });
            //                });
          //  getNumber().then((value) {
          //    setState(() {
          //      result = value.toString();
          //    });
          //  }).catchError((e) {
          //    result = 'An error occurred';
          //  });
          //  },
          //),

          //Praktikum 4
          ElevatedButton(
            child: Text('GO!'),
            onPressed: (){
              returnFG();
            },
          ),

            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
