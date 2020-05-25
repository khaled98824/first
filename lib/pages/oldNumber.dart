import 'package:path_provider/path_provider.dart';
import 'dart:io';

class FileMethod{
  static Future<String> AppPath()async{
    final path = await getApplicationDocumentsDirectory();
    return path.path;
  }
  static Future<File> AppFile(String filename)async {
    final appPath = await AppPath();
    return File('$appPath/$filename');
  }
  static Future<File> WriteFile(String data,String filename)async{
    final file = await (AppFile(filename));
    return file.writeAsString('$data');
  }

  static Future<String> ReadFile (String fileName)async{
    try{
      final file = await (AppFile(fileName));
      String data = await (file.readAsString());
      return data ;
    }catch (e){
      return 'there is no file';
    }
  }

}
