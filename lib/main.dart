import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Comments",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                height: 1,
                color: Colors.black,
                indent: 80,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.blue[900],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          myPeople[index],
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          myComments[index],
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const myPeople = [
  "Jefferson",
  "Yigit",
  "Berfin",
  "Merve",
  "Kerem",
  "Alkim",
  "Murat",
  "Deniz",
  "X",
  "Y",
  "Z",
];

const myComments = [
  "Oldu o zaman",
  "Deme oyle seyler",
  "Merhaba",
  "Of ya bu boyle olmaz",
  "Ben bilmem Muradim bilir",
  "Paint kullanma sıkarım",
  "Pelus ayicik",
  "Ne bitmez egittimmis",
  "a",
  "b",
  "c",
];
