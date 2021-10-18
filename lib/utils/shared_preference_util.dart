import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDataUtils{

  // 保存int数据
  Future setInt(String key, int value) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    print({key,value});
    sp.setInt(key, value);
  }
  // 保存int数据
  Future get(String key) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.get(key);
  }
  // 获取数据
  Future getUserInfo(key) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    print(sp.get(key));
    return sp.get(key);
  }

  // 清除数据
  Future deleteUserInfo(key) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove(key);
  }

}