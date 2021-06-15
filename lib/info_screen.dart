import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Widget addIcon(final IconData iconName) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Icon(
        iconName,
        size: 32,
        color: Colors.grey,
      ),
    );
  }

  Widget textIcons(String textIcon) {
    return Text(
      textIcon,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 14,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget cardText(String cardText, final Color cardTextColor) {
    return Text(
      cardText,
      style: TextStyle(
          color: cardTextColor, fontSize: 20.0, fontWeight: FontWeight.w900),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      color: Colors.grey[300],
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30.0),
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => print("Upload the Image"),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/passportpic.png'),
                          radius: 28.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "WELCOME HASSAAN,",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.5,
                            color: Colors.grey[600]),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: cardText("MY WARDROBE'S IMPACT", Colors.black),
                        ),
                        Icon(
                          Icons.info,
                          size: 32,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Icon(
                                Icons.cloud_circle,
                                size: 35,
                              ),
                              SizedBox(height: 10),
                              textIcons("2.78 KG CO2"),
                            ],
                          ),
                        ),
                        Expanded(child: addIcon(Icons.add)),
                        Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.pin_drop,
                                  color: Colors.blue, size: 35),
                              SizedBox(height: 10),
                              textIcons("0.50 METER WATER")
                            ],
                          ),
                        ),
                        Expanded(child: addIcon(Icons.remove)),
                        Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.park, color: Colors.green, size: 35),
                              SizedBox(height: 10),
                              textIcons("1 TREE")
                            ],
                          ),
                        ),
                        Expanded(child:addIcon(Icons.add)),
                        Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.menu_book,
                                  color: Colors.black, size: 35),
                              SizedBox(height: 10),
                              textIcons("1 TREE fddf gfgf hhgh hghg gjhjgd kk")
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      cardText("MY SCORE:", Colors.black),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 5,
                              child: cardText("COMPENSATED:", Colors.grey)),
                          Expanded(
                              flex: 6,
                              child: cardText("1 GARMENT", Colors.black)),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 5,
                              child: cardText("PLANTED:", Colors.grey)),
                          Expanded(
                              flex: 5,
                              child: cardText("1 TREE", Colors.black)),
                          Expanded(
                            child: Icon(
                              Icons.park,
                              size: 30,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 5,
                              child: cardText("CONTRIBUTED:", Colors.grey)),
                          Expanded(
                              flex: 5,
                              child: cardText("1 SCHOOL DAY", Colors.black)),
                          Expanded(
                            child: Icon(
                              Icons.menu_book,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
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
