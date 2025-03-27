import 'package:flutter/material.dart';
import 'package:service/custome_widgets/delivery_type_icon.dart';
import 'package:service/custome_widgets/discount_container.dart';
import 'package:service/custome_widgets/whatsaapcontainer.dart';
import 'package:service/screen/home2.dart';
import 'package:service/utils/image.dart';

class BottomHome extends StatelessWidget {
  const BottomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width * .5,

                    child: Image.asset(Images.freshImage),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width * .5,

                    child: Image.asset(Images.freshImage),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width * .5,

                    child: Image.asset(Images.freshImage),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Select your Delivery Type", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DeliveryTypeIcon(iconname: Image.asset(Images.car)),
                DeliveryTypeIcon(iconname: Image.asset(Images.flight)),
                DeliveryTypeIcon(iconname: Image.asset(Images.rocket)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Normal"), Text("Express"), Text("Express")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: Text("(Two Days)"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("(Next Day)"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Offers"), Text("View all")],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                DiscountContainer(
                  discountname: Image.asset(
                    fit: BoxFit.fill,
                    Images.discountpurple,
                  ),
                ),
                SizedBox(width: 10),
                DiscountContainer(
                  discountname: Image.asset(
                    fit: BoxFit.fill,
                    Images.discountorange,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Whatsaapcontainer(
              whataapimage: Image.asset(fit: BoxFit.fill, Images.whataapimage),
            ),
            SizedBox(height: 10),

            Text(
              "No Orders Yet",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "your first laundry order is waiting start accepting",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "orders and keeps things fresh and clean",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home2()),
                );
              },
              child: Text(
                "Request On Order",
                style: TextStyle(color: Colors.green, fontSize: 23),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
