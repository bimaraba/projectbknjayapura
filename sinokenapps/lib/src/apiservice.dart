import 'package:sinokenapps/src/usulkpmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class fecthUsulKp {
  var data = [];
  List<UsulKPModel> result = [];
  String UrlList = 'http://192.168.1.8:8000/api/search-kp/{nip}';

  Future<List<UsulKPModel>> getUsulKp({String? nip}) async {
    var url = Uri.parse(UrlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        result = data.map((e) => UsulKPModel.fromJson(e)).toList();
        if (nip != null) {
          result = result
              .where((element) =>
                  element.pNSNIPBARU!.toLowerCase().contains(nip.toLowerCase()))
              .toList();
              print(response.body);
        }else{
          print('error');
        }
      }
    } on Exception catch (e) {
      print('error ; $e');
    }
    return result;
  }
}
