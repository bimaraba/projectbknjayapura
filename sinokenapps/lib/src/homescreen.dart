import 'package:flutter/material.dart';
import 'package:sinokenapps/src/gridviewpage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logobkn.png',
                      height: 100.0,
                      width: 100.0,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Selamat datang di SINOKEN - Kanreg IX BKN Jayapura',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'Media Informasi proses Mutasi Kepegawaian',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Colors.deepOrange
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          GridViewDashboard()
        ],
      ),
    );
  }  
}