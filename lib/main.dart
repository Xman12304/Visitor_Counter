
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//fungsi utama untuk menjalankan class MyApp
void main() => runApp(MyApp());

//class MyApp menggunakan statelesswidget karena tidak ada interkasi input di dalam nya
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Visitor Counter',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{
  //nilai awal count
  int count = 0;
  // tanggal dan jam
  var today = DateFormat.yMMMMd().format(DateTime.now());

//fungsi count menambah
  void incrementCount(){
    setState(() {
      count++;
    });
  }

//fungsi reset
  void reset(){
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Visitor Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Jumlah Pengunjung : $count',
              style: TextStyle(fontSize: 24.0),
            ),
            Container(
              padding: const EdgeInsets.only(top:15.0),
            ),
            Text(
              'Tanggal : $today',
              style: TextStyle(fontSize: 15.0),
            ),
            Container(
              padding: const EdgeInsets.only(bottom:30.0),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  ElevatedButton(
                    child: Text('Hitung', style: TextStyle(fontSize: 26),),
                    onPressed: incrementCount,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom:100.0),
                  ),
                  TextButton(
                  child: Text('Reset'),
                  onPressed: reset,
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}