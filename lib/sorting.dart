import 'package:flutter/material.dart';

class sorting extends StatefulWidget {
  const sorting({Key? key}) : super(key: key);
  @override
  _sortingState createState() => _sortingState();
}

class _sortingState extends State<sorting> {

  List<int> list2=[4,11,2,1,67,33];
  List<String> list=["surat","baroda","vapi","pune","valsad","mumbai"];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text("${list[index]}"),
            subtitle: Text("${list2[index]}"),);
          },),
          bottomNavigationBar: TabBar(
            tabs: [
              ListTile(title: Text("Most Relavance"),onTap: () {

                setState(() {
                  list=["surat","baroda","vapi","pune","valsad","mumbai"];
                });
              },),
              ListTile(title: Text("low to high"),onTap: () {
                setState(() {
                  // list.sort();
                  list.sort((a,b)=>a.compareTo(b));
                });
              },),
              ListTile(title: Text("high to low"), onTap: () {
                setState(() {
                  list.sort((a,b)=>b.compareTo(a));
                  // list.sort((b,a)=>a.compareTo(b));
                });
              },),

            ],
          ),
    ));
  }
}
