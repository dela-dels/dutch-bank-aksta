import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'WorkSans',
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white, foregroundColor: Colors.black)),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.auto_awesome_mosaic_outlined,
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stacked_line_chart_sharp,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: Colors.red),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar.jpeg'),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "Evian Vance",
                              style: TextStyle(
                                fontFamily: 'Work Sans',
                              ),
                            ),
                          ),
                          Text(
                            "CTO",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Work Sans',
                                fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  ),
                  Icon(Icons.settings)
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '••••2334',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'USD Wallet',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 18,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Deutsche Bank Global",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Text(
                            "\$ 26,950.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.teal[100]),
                child: Row(
                  children: [
                    Container(
                      //height: 30,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.shopping_bag),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: const Text(
                              "Shopping Mall",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ 1,544",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18),
                                child: Text(
                                  "Available \$ 4,500.00",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transactions",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 5, 5, 8),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            onPressed: () {},
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Filter",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Today")],
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red[100],
                  child: Icon(
                    Icons.vertical_align_bottom_sharp,
                    color: Colors.black,
                  ),
                ),
                // leading: Container(
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(30),
                //       color: Colors.green[100]),
                //   child: Icon(Icons.arrow_upward),
                // ),
                title: Text('Transfer',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                subtitle: Text('Incoming Transafer',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                trailing: Text(
                  '+ \$ 3,110',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green[100],
                  child: Icon(
                    Icons.vertical_align_top_sharp,
                    color: Colors.black,
                  ),
                ),
                title: Text('Health',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                subtitle: Text('Pharmacy',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                trailing: Text(
                  '- \$ 312.9',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
