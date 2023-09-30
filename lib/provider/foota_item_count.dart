import 'package:flutter/material.dart';

class ItemCount extends ChangeNotifier{
int count=1;

  void itemIncrement(){
    if(count<10) {
      count++;
    }
    notifyListeners();
  }

  void itemDecrement(){

    if(count>1) {
      count--;
    }
    notifyListeners();

  }

}