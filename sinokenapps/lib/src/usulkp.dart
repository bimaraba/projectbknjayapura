import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sinokenapps/src/usulkpmodel.dart';

class UsulKp extends StatefulWidget {
  const UsulKp({Key? key}) : super(key: key);

  @override
  State<UsulKp> createState() => _UsulKpState();
}

class _UsulKpState extends State<UsulKp> {
  //variable form
  TextEditingController _searchUsulKpController = TextEditingController();
  // fecthUsulKp _usulKp  = fecthUsulKp();
  // String? nip;
  // List<UsulKPModel> usulkp = [];
  String url = 'http://192.168.1.8:8000/api/search-kp/nip=';
  // Future<List<UsulKPModel>> getAllDataUsulKp() async {
  //   try {
  //     var url = 'http://192.168.1.8:8000/api/search-kp/nip=';
  //     final response = await http.get(Uri.parse(url));
  //     if (response.statusCode == 200) {
  //       List<UsulKPModel> list = parseAgents(response.body);
  //       print(response.body);
  //       return list;
  //     } else {
  //       throw Exception('Error');
  //     }
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }
  Future<List<Map<String, dynamic>>> _searchUsulKp(nip) async {
    http.Response response =
        await http.get(Uri.parse('http://192.168.1.8:8000/api/search-kp/nip=' + nip));
    if (response.statusCode == 200) {
      print('object');
      if (_searchUsulKpController.text != '') {
        var response = await http.get(
            Uri.parse('http://192.168.1.8:8000/api/search-kp/nip=' + nip),
            headers: {'Accept': 'application/json'});
            
      }
      print(response.body);
      // if (response.statusCode !=200) return null;
      return List<Map<String, dynamic>>.from(jsonDecode(response.body)['data']);

      // return List<Map>.from(jsonresponse);
      // return json.decode(response.body)['data'];
    } else {
      var response = await http.get(
          Uri.parse('http://192.168.1.8:8000/api/search-kp/nip='),
          headers: {'Accept': 'application/json'});
      return List<Map<String, dynamic>>.from([]);
    }
  }

  static List<UsulKPModel> parseAgents(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<UsulKPModel>((json) => UsulKPModel.fromJson(json))
        .toList();
  }

  @override
  void initState() {
    super.initState();
    // getAllDataUsulKp().then((value) {
    //   setState(() {
    //     usulkp = value;
    //   });
    // });
    // _searchUsulKp(nip);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text(
          'Cari usul KP',
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 20.0,
        ),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextField(
                  controller: _searchUsulKpController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal,
                        ),
                      ),
                      labelText: 'Cari Data KP'),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    if (_searchUsulKpController != '') {
                      setState(() {});
                    }
                  },
                  child: Text('Cari'),
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
            FutureBuilder<List>(
              // future: _searchUsulKp(_searchUsulKpController.text.toString()),
              future: _searchUsulKp(_searchUsulKpController.text),
              builder: ((context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  // var data = snapshot.data;

                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          title: Text(
                              'NIP : ${snapshot.data![index]['PNS_NIPBARU'].toString()}'),
                        );
                      }),
                    ),
                  );
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
