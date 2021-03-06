import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edit.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20,),
                child: Text('메모모', style: TextStyle(fontSize: 36, color: Colors.blue),),
              )
            ],
          ),
          ...LoadMemo()
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => EditPage())
          );
        },
        tooltip: '메모를 추가하려면 클릭하세요.',
        label: Text('메모 추가'),
        icon: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List LoadMemo() {
    List memoList = [];
    memoList.add(Container(color: Colors.deepOrangeAccent, height: 100,));
    return memoList;
  }
}
