import 'package:flutter/material.dart';
import 'package:utsmobileprograming/pages/dashboard.dart';
import 'package:utsmobileprograming/pages/profil.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tansfer',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: ProfilePage(),
    );
  }
}

class TransferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Transfer"),
          backgroundColor: Colors.lightBlue,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.wallet, size: 50, color: Colors.lightBlue),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wallet Balance',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rp 10.000.000',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'E Wallet Number',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '0876543265434',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TransferPage()),
                            );
                          },
                          icon: Icon(Icons.money,
                              size: 40, color: Colors.lightBlue),
                          label: Text('Bank', style: TextStyle(fontSize: 16)),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.wallet,
                              size: 40, color: Colors.lightBlue),
                          label:
                              Text('E Wallet', style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isDismissible: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    builder: (context) => SizedBox(
                          height: 300,
                          child: ListView(
                            children: [
                              ListTile(
                                onTap: () => print("BRI"),
                                leading: Icon(Icons.money),
                                title: Text("BRI"),
                              ),
                              ListTile(
                                onTap: () => print("BNI"),
                                leading: Icon(Icons.money),
                                title: Text("BNI"),
                              ),
                              ListTile(
                                onTap: () => print("BSI"),
                                leading: Icon(Icons.money),
                                title: Text("BSI"),
                              ),
                              ListTile(
                                onTap: () => print("Mandiri"),
                                leading: Icon(Icons.money),
                                title: Text("Mandiri"),
                              ),
                              ListTile(
                                onTap: () => Navigator.pop(context),
                                leading: Icon(Icons.cancel),
                                title: Text("Cancel"),
                              ),
                            ],
                          ),
                        ));
              },
              child: Text("DESTINATION BANK   v"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Bank Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Explanation',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => TransferPage()),
                      );
                    },
                    child: Text('Selanjutnya'),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardPage()),
                      );
                    },
                    child: Text('Cancle'),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ])
              ],
            ),
          ]),
        ));
  }
}
