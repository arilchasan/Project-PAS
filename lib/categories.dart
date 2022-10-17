import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HorizontalListPageState createState() => _HorizontalListPageState();
}

class _HorizontalListPageState extends State<categories> {
  List<Map> categories = [
    {
      'name': 'All',
    },
    {
      'name': 'Meja',
    },
    {
      'name': 'Kursi',
    },
    {
      'name': 'Sofa',
    },
    {
      'name': 'Lemari',
    },
  ];

  Color primaryBlue = Color(0xFF586894);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 250,
            ),
            Text(
              "Categories",
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            categories[index]['name'],
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ]),
        ));
  }
}
