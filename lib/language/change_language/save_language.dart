
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorage
{
    ///write
   void  saveLanguageToDisk({String language})async
   {
     await GetStorage().write('lang',language );
   }

   ///Read
  Future<String> get languageSelected async{
     return await GetStorage().read('lang')??'ar';
  }

}