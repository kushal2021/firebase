import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class mycontroller extends GetxController
{
  RxList list=List.filled(9, "").obs;
  int t=0;

  changeval(int i)
  {
    if(t%2==0)
      {
        list[i]="O";
      }
    else{
      list[i]="X";
    }
    t++;
  }
}