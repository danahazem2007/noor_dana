import 'package:flutter/cupertino.dart';

import '../Model/News_Model.dart';
import '../Srevice/News_Service.dart';

class provider extends ChangeNotifier{
  News_Model?model;
  Future<void> getdatap()async{
    model = await News_Service.getall();
    notifyListeners();
  }
}