import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../models/todolistmodel.dart';
import '../services/tdl_service.dart';

part 'tdl_state.dart';

class TdlCubit extends Cubit<TdlState> {
  TdlCubit() : super(TdlInitial()){
    getTDL();
  }
  List<TdlModel> TDL = [];
   bool isLoading = true;

   getTDL()async{
    emit(TdlLoading());
    try{
    TDL = await TodolistService().getTDLData();
    isLoading = false;
    // throw Exception();
    emit(TdlSuccess());
    }
    catch(e){
    print(e.toString());
    emit(TdlError());
    }
   }
}
