import 'package:flutter/material.dart';

class Notification1 extends StatefulWidget {
  const Notification1({super.key});

  @override
  State<Notification1> createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff6E3667),
        title: Text("Notification", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext, index) {
                return Card(
                  color: Colors.white,
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * .8,

                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.notifications, color: Colors.white),
                      ),
                      title: Text(
                        "Get 20% of on Our Wash",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        "When your bring minimum RS 150 of laundry  ",
                      ),
                      trailing: Text("5:30"),
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
