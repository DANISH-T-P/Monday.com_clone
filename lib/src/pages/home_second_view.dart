import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeSecondView extends StatelessWidget {
  const HomeSecondView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: MediaQuery.of(context).size.width / 2.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    8.0), //<-- SEE HERE
              ),
              elevation: 5,
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                focusColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: MediaQuery.of(context)
                            .size
                            .width *
                            0.43,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/templates.png'),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Boost your workflow in minutes with\nready-made templates',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black87
                                    .withOpacity(0.3)),
                            borderRadius:
                            BorderRadius.circular(6)),
                        child: TextButton(
                          onPressed: () {},
                          child:
                          Text('Explore templates'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text("Lern & get inspired",
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 15),
            Neumorphic(
              child: Container(
                height: 80,
                decoration:
                BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color:
                          Colors.deepOrange.shade100,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/icons/getting_started.png',
                              )),
                          borderRadius:
                          BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: const [
                          Text("Getting started",
                              style: TextStyle(
                                  fontWeight:
                                  FontWeight.w600)),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Lern how monday.com works"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Neumorphic(
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width *
                    .96,
                decoration:
                const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color:
                          Colors.deepOrange.shade100,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/icons/help_center.png',
                              )),
                          borderRadius:
                          BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text("Help center",
                              style: TextStyle(
                                  fontWeight:
                                  FontWeight.w600)),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Lern and get support"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Neumorphic(
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width *
                    .96,
                decoration:
                BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color:
                          Colors.deepOrange.shade100,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/icons/webinar.png',
                              )),
                          borderRadius:
                          BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text("Join a webinar",
                              style: TextStyle(
                                  fontWeight:
                                  FontWeight.w600)),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Watch a live walkthrough"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      )
    ]);
  }
}