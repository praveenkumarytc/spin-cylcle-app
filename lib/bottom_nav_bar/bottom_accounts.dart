import 'package:flutter/material.dart';
import 'package:service/bottom_nav_bar/bottom_wallet.dart';
import 'package:service/bottom_nav_bar/refer_and_earn.dart';
import 'package:service/custome_widgets/profile_details.dart';
import 'package:service/points/points.dart';
import 'package:service/profile_screen/my_profile.dart';
import 'package:service/profile_screen/offers.dart';
import 'package:service/utils/image.dart';

class BottomAccounts extends StatelessWidget {
  const BottomAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: ProfileDetails(
                imagetype: Images.datesvg,
                imageName: "Schedule a Pickup",
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyProfile()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: ProfileDetails(
                imagetype: Images.profile,
                imageName: "My profile ",
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomWallet()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: ProfileDetails(
                imagetype: Images.wallet,
                imageName: "Wallet",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.membership,
              imageName: "Membership and rewards",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Offers(tittle: "Offers"),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: ProfileDetails(
                imagetype: Images.offers,
                imageName: "offers cards ",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.rate,
              imageName: "Rate cards ",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.shop,
              imageName: "visit Store",
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Points()),
              );

            },
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: ProfileDetails(
                imagetype: Images.points,
                imageName: "Points",
              ),

            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReferAndEarn()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: ProfileDetails(
                imagetype: Images.rupee,
                imageName: "Refer and earns 10000",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.help,
              imageName: "Help & support",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.termcondition,
              imageName: "Term and conditions",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.delete,
              imageName: "Delete my account ",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.logout,
              imageName: "Log Out ",
            ),
          ),
        ],
      ),
    );
  }
}
