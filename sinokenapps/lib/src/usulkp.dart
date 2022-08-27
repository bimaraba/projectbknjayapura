import 'package:flutter/material.dart';

class UsulKp extends StatefulWidget {
  const UsulKp({Key? key}) : super(key: key);

  @override
  State<UsulKp> createState() => _UsulKpState();
}

class _UsulKpState extends State<UsulKp> {
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
                const TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    labelText:'Cari Data KP' 
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {},
                  child: const Text('Cari'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
