import 'package:app_design/widges/widges_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String imagePath;
  final String price;
  final String label;
  final String label1;

  const Details({
    super.key,
    required this.imagePath,
    required this.price,
    required this.label,
    required this.label1,
  });

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
              widget.imagePath,
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
                    widget.label,
                    style: AppWidgets.semiBoldTextFeildStyle(),
                  ),
                  Text(
                    widget.label1,
                    style: AppWidgets.boldTextFeildStyle(),
                  ),
                 ],
              ),
              //const Spacer(),
              ]
            ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "If you turn on Low Power Mode, 5G will be disabled except in some cases, such as video streaming and large downloads on iPhone 12 and iPhone 13 models.",
                style: AppWidgets.lightTextFeildStyle(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    "Delivery Time",
                    style: AppWidgets.semiBoldTextFeildStyle(),
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
                    style: AppWidgets.semiBoldTextFeildStyle(),
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
                          style: AppWidgets.semiBoldTextFeildStyle(),
                        ),
                        Text(
                          widget.price,
                          style: AppWidgets.boldTextFeildStyle(),
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
