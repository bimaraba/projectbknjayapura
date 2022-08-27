import 'package:flutter/material.dart';
import 'package:sinokenapps/src/usulkp.dart';
import 'package:sinokenapps/src/usulpensiun.dart';

class GridViewDashboard extends StatefulWidget {
  const GridViewDashboard({Key? key}) : super(key: key);

  @override
  State<GridViewDashboard> createState() => _GridViewDashboardState();
}

class _GridViewDashboardState extends State<GridViewDashboard> {
  //redirect page

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView(
        padding: EdgeInsets.only(
          left: 16.0,
          right: 16.0,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 18.0,
          mainAxisSpacing: 18.0,
        ),
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => UsulKp()),
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/user.png',
                    width: 42.0,
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    'Usul KP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => UsulPensiun()),
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/pensiun.png',
                    width: 42.0,
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    'Usul Pensiun',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => UsulKp()),
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/k3.png',
                    width: 42.0,
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    'Usul K3',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap:(){} ,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/konsul.png',
                    width: 42.0,
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    'Konsultasi Online',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
