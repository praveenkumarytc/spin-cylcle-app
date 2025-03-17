import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service/custome_widgets/profile_details.dart';
import 'package:service/utils/image.dart';

class BottomAccounts extends StatelessWidget {
  const BottomAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: ProfileDetails(
              imagetype: Images.datesvg,
              imageName: "Schedule a Pickup",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: ProfileDetails(
              imagetype: Images.profile,
              imageName: "My profile ",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.wallet,
              imageName: "Wallet",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.pencil,
              imageName: "Membership and rewards",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.pencil,
              imageName: "offers cards ",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.pencil,
              imageName: "Rate cards ",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.pencil,
              imageName: "visit Store",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.pencil,
              imageName: "Points",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.pencil,
              imageName: "Refer and earns 1000",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.pencil,
              imageName: "Help & support",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.pencil,
              imageName: "Term and conditions",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.pencil,
              imageName: "Delete my account ",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ProfileDetails(
              imagetype: Images.pencil,
              imageName: "Log Out ",
            ),
          ),
        ],
      ),
    );
  }
}
