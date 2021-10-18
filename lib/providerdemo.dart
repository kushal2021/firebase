import 'package:first/myclass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class providerdemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    myclass m=Provider.of<myclass>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: m.t1,),
          TextField(controller: m.t2,),
          ElevatedButton(onPressed: () {
            m.a=m.t1.text;
            m.b=m.t2.text;
            m.add();
          }, child: Text("Submit")),
          Text("sum=${m.sum}")
        ],
      ),
    );
  }
}
