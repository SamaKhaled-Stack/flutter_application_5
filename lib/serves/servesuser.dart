import 'package:dio/dio.dart';
import 'package:flutter_application_5/models/user_model.dart';

class Servesuser {
static Dio dio=Dio();


 static Future<Auto> signup({
    required String name,
  required String email,
  required String phone,
  required String password,
 }) async {
    try{
       final Response response= await dio.post("https://elsewedyteam.runasp.net/api/Register/AddUser",
        data: {
          "Name":name,
          "Email":email,
          "Password":password,
          "Phone":phone

        }
       
        );
      return Auto.fromjosin(response.data);
      
  
    } on DioException catch (dioerror){
      throw Exception(dioerror);
    }
    
    catch(other){
      throw Exception(" other Erorr  ${other.toString()}");
    }
 
 }
     static Future<Auto> login({
         required String email,
         required String password,

     }) async{
        try{
          final Response response=await dio.post("https://elsewedyteam.runasp.net/api/Login/CheckUser",
       
       data: {
        "Email":email,
        "Password":password,
       }
      
      ) ;
       return Auto.fromjosin(response.data);

      } on DioException catch(dioerror){
        throw Exception(dioerror);
      } catch( other){
        throw Exception("other error ${other.toString()}");
      }
        }
     }
