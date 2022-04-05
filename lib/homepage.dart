import 'package:flutter/material.dart';
import 'package:ui_coffeshope/constent.dart';
import 'package:ui_coffeshope/detailspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isFavorite=false;
  @override
  Widget build(BuildContext context) {
    bool isFavorite = false;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 15),
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "welcome, Nadia",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Varala",
                      fontWeight: FontWeight.bold,
                      color: blackk),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/model.jpg"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
                padding: EdgeInsets.only(right: 55),
                child: Text(
                  "Let's select the best tastes for your next coffee break!",
                  style: TextStyle(
                      fontFamily: "Nunito",
                      color: grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                )),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Taste of the week",
                  style: TextStyle(
                      fontFamily: "Varala",
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: blackk),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "See all",
                    style: TextStyle(
                        fontFamily: "Varala",
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: grey),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 410,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  coffeeListCard(
                      "assets/starbucks.png",
                      "Caffè Mistro",
                      "Coffeeshop's",
                      'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                      "\$4.99",
                      false),
                  coffeeListCard(
                      "assets/twocup.png",
                      "Caffè Latte",
                      "Caffe Latte",
                      'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                      "\$3.99",
                      false),
                  coffeeListCard(
                      "assets/starbucks.png",
                      "Stark Bucks",
                      " Coffee Bucks",
                      "Our dark, rich espresso balanced with steamed milk and a light layer of foam",
                      "\$4.5",
                      isFavorite)
                ],
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Explore nearby",
                  style: TextStyle(
                      fontFamily: "Varala",
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: const Text(
                    "See all",
                    style: TextStyle(
                        fontFamily: "Varala",
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: grey),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 150,
              width: 200,
              // color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  coffeesimage("assets/coffee2.jpg"),
                  coffeesimage("assets/coffee3.jpg"),
                  coffeesimage("assets/coffee4.jpg"),
                  coffeesimage("assets/coffee5.jpg"),
                  coffeesimage("assets/coffee6.jpg"),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  coffeesimage(String coffeeimg) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: 100,
        width: 155,
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(coffeeimg), fit: BoxFit.cover)),
      ),
    );
  }

  coffeeListCard(String imag, String coffename, String Shope,
      String description, String pricce, bool isFavorite) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        // color: Colors.amber,
        height: 350,
        width: 225,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 335,
                  // color: Colors.blue,
                ),
                Positioned(
                    top: 75,
                    child: Container(
                      padding: const EdgeInsets.only(left: 17, right: 20),
                      height: 260,
                      width: 225,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xFFDAB68C)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          Text(
                            Shope,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "Varala",
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            coffename,
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "Varala",
                                fontSize: 28,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            description,
                            style: const TextStyle(
                                // color: Colors.white,
                                // fontFamily: "Varala",
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                pricce,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Varala",
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                               CircleAvatar(
                                radius: 17,
                                backgroundColor: Colors.white,
                                child: Center(
                                    child: Icon(
                                  Icons.favorite,
                                  color: _isFavorite ? Colors.red : Colors.grey,
                                  size: 19,
                                )),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                Positioned(
                    left: 60,
                    top: 25,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          // color: Colors.black38,
                          image: DecorationImage(
                              image: AssetImage(imag), fit: BoxFit.fitHeight)),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DetailsPage()));
              },
              child: Container(
                height: 48,
                width: 230,
                child: const Center(
                    child: Text(
                  "Order Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: "Varala",
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                )),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
