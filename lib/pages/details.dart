import 'package:app_design/widges/widges_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            GestureDetector(
              onTap: () {
              Navigator.pop(context);
            },
              child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
              ),
            ),
            Image.asset(
              "images/iphone.jpeg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              fit: BoxFit.fill,
              ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    "Apple iPhone 13",
                    style: AppWidges.semiBoldTextFeildStyle(),
                  ),
                  Text(
                    "Super Retina XDR display",
                    style: AppWidges.boldTextFeildStyle(),
                  ),
                 ],
              ),
              const Spacer(),
              ]
            ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "If you turn on Low Power Mode, 5G will be disabled except in some cases, such as video streaming and large downloads on iPhone 12 and iPhone 13 models.",
                style: AppWidges.LightTextFeildStyle(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    "Delivery Time",
                    style: AppWidges.semiBoldTextFeildStyle(),
                  ),
                  const SizedBox(
                    width: 25.0,
                  ),
                  const Icon(
                    Icons.alarm,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "2 Days",
                    style: AppWidges.semiBoldTextFeildStyle(),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: AppWidges.semiBoldTextFeildStyle(),
                        ),
                        Text(
                          "\u20B942,999",
                          style: AppWidges.boldTextFeildStyle(),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Add to cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'Poppins'),
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
        ),
      ),
    );
  }
}
