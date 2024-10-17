import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/details.dart';
import 'package:food_delivery_app/pages/details1.dart';
import 'package:food_delivery_app/widges/widges_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 50.0,
            left: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello Sneha,", style: AppWidges.boldTextFeildStyle()),
                  Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text("Delicious Food", style: AppWidges.HeadlineTextFeildStyle()),
              Text("Discover and get Great Food",
                  style: AppWidges.LightTextFeildStyle()),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: showItem()),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Details()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "images/salad3.png",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    "Veggie Taco Hash",
                                    style: AppWidges.semiBoldTextFeildStyle(),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Fresh and Healthy",
                                    style: AppWidges.LightTextFeildStyle(),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "\$25",
                                    style: AppWidges.semiBoldTextFeildStyle(),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Details1()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "images/salad4.png",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    "Mix Veg Salad",
                                    style: AppWidges.semiBoldTextFeildStyle(),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Spicy with Onion",
                                    style: AppWidges.LightTextFeildStyle(),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "\$28",
                                    style: AppWidges.semiBoldTextFeildStyle(),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/salad3.png",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Mediterranean Chickpea Salad",
                                style: AppWidges.semiBoldTextFeildStyle(),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Honey got cheese",
                                style: AppWidges.LightTextFeildStyle(),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "\$25",
                                style: AppWidges.semiBoldTextFeildStyle(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "images/ice_cream.jpeg",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "images/pizza1.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "images/burger1.jpeg",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "images/salad1.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
