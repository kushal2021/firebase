import 'package:flutter/material.dart';

class myclass extends ChangeNotifier
{
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  String a="0";
  String b="0";
  int sum=0;
  add()
  {
    int n1=num.parse(a).toInt();
    int n2=num.parse(b).toInt();
    sum=n1+n2;
    print(sum);
    notifyListeners();
  }
}