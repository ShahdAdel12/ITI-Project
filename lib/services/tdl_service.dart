import 'package:dio/dio.dart';
import 'package:login/models/todolistmodel.dart';

class TodolistService{
  String url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<TdlModel>> getTDLData()async{
    List<TdlModel> tdList = [];
    final dio = Dio();
    final response = await dio.get(url);
    print(response);
    var data = response.data;
    data.forEach((jsonElement){
      TdlModel TDL = TdlModel.fromJson(jsonElement);
      tdList.add(TDL);

    });
    
    return tdList;

  }
}