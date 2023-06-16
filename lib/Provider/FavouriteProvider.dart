
import 'package:flutter/cupertino.dart';

class FavouriteProvider with ChangeNotifier{
  List<int> _fav = [];
  List<String> _list = [];

  List<int> get fav => _fav;

  List<String> get list => _list;

  void addFav(int index){
    _fav.add(index);
    notifyListeners();
  }

  void remove(int index){
    _fav.remove(index);
    notifyListeners();
  }

  void addList(String value){
    _list.add(value);
    notifyListeners();
  }

}