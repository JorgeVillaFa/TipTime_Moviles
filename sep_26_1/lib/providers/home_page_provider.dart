import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int? _currentSelectedRadio;
  bool _switch = false;
  var _radioGroup = {0: "Amazing (20%)", 1: "Good (18%)", 2: "Okay (15%)"};
  double _tip = 0.0;
  TextEditingController _cost = TextEditingController();

  int get getCurrentSelectedRadio => _currentSelectedRadio!;
  double get getTip => _tip;
  bool get getSwitch => _switch;
  dynamic get getRadioGroup => _radioGroup;
  TextEditingController get getCost => _cost;

  void changeRadio(newValue) {
    _currentSelectedRadio = newValue;
    notifyListeners();
  }

  void changeSwitch(val) {
    _switch = val;
    notifyListeners();
  }

  void calculateTip(int currentSelectedRadio) {
    if(_switch == true){
      _tip +=  (int.parse(_cost.text) * (currentSelectedRadio / 100)).ceil();
    }else{
      _tip +=  int.parse(_cost.text) * (currentSelectedRadio / 100);
    }
    notifyListeners();
  }
}
