import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDescriptionPage extends StatelessWidget {
  const ProductDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //acts Like appbar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // leading Icon
                InkWell(
                  onTap: () {
                    //
                  },
                  child: SvgPicture.asset(
                    "assets/logo/leading.svg",
                    height: 44,
                    width: 44,
                  ),
                ),

                //center Store Location indicates here
                InkWell(
                  onTap: () {},
                  child: const Column(
                    children: [
                      Text(
                        "Store Location",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Row(children: [
                        // SvgPicture.asset(
                        //   "assets/logo/loaction.svg",
                        //   height: 14,
                        //   width: 14,
                        // ),
                        Text(
                          "ABC Street, New York",
                        ),
                      ]),
                    ],
                  ),
                ),

                //action icon ( cart incates here)
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/logo/action_cart.svg",
                    height: 44,
                    width: 44,
                  ),
                ),
              ],
            ),
          ),
          const Hero(
              tag: "productDescription", child: Image(image: NetworkImage(""))),
        ],
      ),
    );
  }
}
