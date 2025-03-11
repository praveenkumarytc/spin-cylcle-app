import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key, required this.addresscontroller,required this.svgimage});
  final TextEditingController addresscontroller;
  final SvgPicture svgimage;

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 5),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: addresscontroller,
                        decoration: InputDecoration(
                          hintText: "type your address.",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12),
                            child:svgimage
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Container(
                        height: 23,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 135, 215, 138),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Change",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}