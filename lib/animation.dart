import 'package:flutter/material.dart';

class animation extends StatefulWidget {

  @override
  _animationState createState() => _animationState();
}

class _animationState extends State<animation> {
  bool anim=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        anim=true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Container(
        width: 200,
        height: 200,
        color: Colors.yellow,
        child: Column(
          children: [
            AnimatedPadding(
              duration: Duration(seconds: 5),
              padding: anim?EdgeInsets.all(10):EdgeInsets.all(20),
              curve: Curves.slowMiddle,
              child: Text("hello",style: TextStyle(backgroundColor: Colors.green),),
              onEnd: () {
                setState(() {
                  anim=!anim;
                });
              },
            ),
            // ElevatedButton(onPressed: () {
            //   setState(() {
            //     anim=!anim;
            //   });
            // }, child: Text("Change"))
          ],
        ),
      ),
    );
  }
}
