import 'dart:convert';

import 'package:http/http.dart';
import 'package:trading_app/Repository/Api/api_client.dart';
import 'package:trading_app/Repository/Model/traders_data.dart';
import 'package:trading_app/Repository/Model/usre_login.dart';
import 'package:trading_app/main.dart';

class CriptoApi {
  ApiClient apiClient = ApiClient();
//1
  Future<Loginmodel> getLogin(String email,String password ) async {
    String trendingpath = '$basePath1/local/user/login';

    print(trendingpath);
    var body ={
    "email":email,
    "password":password
};
print(body);
    Response response =
        await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));
       
print(response.body);
    return Loginmodel.fromJson(jsonDecode(response.body));
  }
  //2
   Future<List<Tradersdatamodel>> getTradersdata() async {
    String trendingpath = '$basePath2/traders/all';
    var body = {};
    Response response =
        await apiClient.invokeAPI(trendingpath, 'GET',body);

     return Tradersdatamodel.listFromJson(jsonDecode(response.body));
  }
}
