import 'package:flutter/material.dart';
import 'package:service/profile_screen/myaddress2.dart';
import 'package:service/utils/colors.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({super.key});

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mycolors.purpleColor,
        title: Text("My address", style: TextStyle(color: Mycolors.whiteColor)),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width * .9,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Saved Address",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  CircleAvatar(
                    backgroundColor: Mycolors.greenColor,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Myaddress2(),
                            ),
                          );
                        },
                        icon: Icon(Icons.add, color: Mycolors.whiteColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext, index) {
                return Card(
                  elevation: 2,
                  child: ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.radio_button_checked,
                        color: Mycolors.greenColor,
                      ),
                    ),
                    title: Text("Home"),
                    subtitle: Text("Inventic.tech software company Lucknow "),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
