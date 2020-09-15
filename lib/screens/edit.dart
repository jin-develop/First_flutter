import 'package:flutter/material.dart';
import 'package:memomo/database/db.dart';
import 'package:memomo/database/memo.dart';

class EditPage extends StatelessWidget {
  String title = '';
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {},
          ),
          IconButton(
              icon: const Icon(Icons.save),
              onPressed: saveDB,
          ),
        ],
      ),
      body:
      Padding(padding: EdgeInsets.all(20),
      child:  Column(
        children: [
          TextField(
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            // obscureText: true,
            decoration: InputDecoration(
              // border: OutlineInputBorder(),
              hintText: '제목을 적어주세요.', //힌트텍스트 레이블 텍스트
            ),
          ),
          Padding(padding: EdgeInsets.all(30)),
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            // obscureText: true,
            decoration: InputDecoration(
              // border: OutlineInputBorder(),
              hintText: '내용을 적어주세요.', //힌트텍스트 레이블 텍스트
            ),
          ),
        ],
      ),)

        
    );
  }


  Future<void> saveDB() async {

    DBHelper sd = DBHelper();

    var fido = Memo(
      id: 3,
      title: this.title,
      text: this.text,
      createTime: DateTime.now().toString(),
      editTime: DateTime.now().toString(),

    );

    await sd.insertMemo(fido)

    print(await sd.memos());
  }
}
