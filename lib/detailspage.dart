import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_coffeshope/constent.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 20,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFFF3B2B7),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, top: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 30,
                      padding: const EdgeInsets.only(),
                      // color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              SizedBox(
                                  width: 150,
                                  child: Text(
                                    "Caramel Macchiato",
                                    style: TextStyle(
                                        fontFamily: "varala",
                                        fontSize: 27,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 17,
                                backgroundColor: Colors.white,
                                child: Center(
                                    child: Icon(
                                  Icons.favorite,
                                  color: Color.fromARGB(255, 231, 50, 37),
                                  size: 19,
                                )),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 183,
                            // color: Colors.amber,
                            child: const Text(
                              "Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.",
                              style: TextStyle(
                                  fontFamily: "varala",
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 23,
                                backgroundColor: Color.fromARGB(255, 70, 67, 67),
                                child: Center(
                                  child: RichText(
                                      text: const TextSpan(
                                          style: TextStyle(color: Colors.white),
                                          children: [
                                        TextSpan(
                                          text: "4.2",
                                        ),
                                        TextSpan(
                                          text: "/5",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ])),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 80,
                                        // color: Colors.amberAccent,
                                      ),
                                      const Positioned(
                                          left: 40,
                                          child: CircleAvatar(
                                              radius: 13,
                                              backgroundColor: Colors.white,
                                              backgroundImage: AssetImage("assets/man.jpg"),
                                                      )),
                                      const Positioned(
                                        left: 20,
                                        child: CircleAvatar(
                                          radius: 13,
                                          backgroundColor: Colors.white,
                                          backgroundImage: AssetImage("assets/model.jpg"),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 0,
                                        child: CircleAvatar(
                                          radius: 13,
                                          backgroundColor: Colors.white,
                                          backgroundImage: AssetImage("assets/model2.jpg"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 0,),
                                  Text("+27more", style: TextStyle(color: Colors.white,fontFamily: "varala",fontWeight: FontWeight.bold,fontSize: 12),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2 - 50,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                        color: Colors.white),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height / 2 - 15,
                    left: 20,
                    child: Container(
                      // color: Colors.blueAccent,
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        children: [
                          const Text(
                            "Preparation time",
                            style: TextStyle(
                                fontFamily: "varala",
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "5min",
                            style: TextStyle(
                                fontFamily: "varala",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Divider(
                            endIndent: 50,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            "Ingredients",
                            style: TextStyle(
                                fontFamily: "varala",
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 100,
                            // color: Colors.amber,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Ingredients(const Color(0xFF6FC5DA),
                                    FontAwesomeIcons.droplet, "Water"),
                                Ingredients(
                                    Colors.brown,
                                    FontAwesomeIcons.nutritionix,
                                    "Brewed Espresso"),
                                Ingredients(
                                    const Color.fromARGB(255, 206, 105, 139),
                                    FontAwesomeIcons.box,
                                    "Sugar"),
                                Ingredients(
                                    const Color.fromARGB(255, 136, 190, 73),
                                    FontAwesomeIcons.centercode,
                                    "Toffee Nut Syup"),
                                Ingredients(
                                    const Color.fromARGB(255, 9, 121, 109),
                                    FontAwesomeIcons.plantWilt,
                                    "Natural Flavors"),
                                Ingredients(
                                    const Color.fromARGB(255, 207, 188, 10),
                                    FontAwesomeIcons.stroopwafel,
                                    "Vanilla Sryup"),
                              ],
                            ),
                          ),
                          const Divider(
                            endIndent: 50,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "Nutrition Information",
                            style: TextStyle(
                                fontFamily: "Varala",
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Information("Calories", "250"),
                          const SizedBox(
                            height: 10,
                          ),
                          Information("Protiens", "10g"),
                          const SizedBox(
                            height: 10,
                          ),
                          Information("Caffeine", "150mg"),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            endIndent: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 71, 46, 37),
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: const Center(
                                child: Text(
                                  "Make Order",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Varala",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height / 10,
                    left: 105,
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/pinkcup.png"),
                              fit: BoxFit.cover)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
