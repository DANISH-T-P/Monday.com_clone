import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeFirstView extends StatelessWidget {
  const HomeFirstView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width / 1.8,
          child: Column(
            children: [
              ExpansionTile(
                title: const Text('Recently Viewed',style: TextStyle(fontWeight: FontWeight.bold),),
                // subtitle: Text('Leading expansion arrow icon'),
                controlAffinity:
                ListTileControlAffinity.leading,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 187,
                      width: 283,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius:
                          BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.all(
                                    8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      image:
                                      const DecorationImage(
                                          image:
                                          AssetImage(
                                            "assets/images/quick_search_recent_board.png",
                                          ),
                                          fit: BoxFit
                                              .fill),
                                      borderRadius:
                                      BorderRadius
                                          .circular(5)),
                                  height: 100,
                                  width: 262,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.web),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "your First board",
                                  style: TextStyle(
                                    fontWeight:
                                    FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2, left: 8, bottom: 2),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.crop_square_sharp,
                                  color: Colors.purple,
                                ),
                                Text(
                                    "work management  > Main Workspace")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,)
                  // ListTile(title: Text('This is tile number 3')),
                ],
              ),
              ExpansionTile(
                title: Row(
                  children: const [
                    Text('Inbox',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 2,
                    ),
                    CircleAvatar(
                      minRadius: 10,
                      child: Text("0"),
                    )
                  ],
                ),
                controlAffinity:
                ListTileControlAffinity.leading,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width:
                      MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                          border: Border.all(
                              color: Colors.grey),
                          borderRadius:
                          BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Neumorphic(
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
                                      CircleAvatar(
                                          child: Image.asset('assets/icons/profile.png')
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Text("Jane Doe",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.w600)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                              "11 min. ago"),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Neumorphic(
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
                                      CircleAvatar(
                                          child: Image.asset('assets/icons/profile.png')
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Text("Anne",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.w600)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                              "23 min. ago"),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Neumorphic(
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
                                      CircleAvatar(
                                          child: Image.asset('assets/icons/profile.png')
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Text("Sam",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.w600)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                              "1 hrs. ago"),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       Text("High Five !",textAlign: TextAlign.center,)
                          //     ],
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.all(10.0),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       Text("Your Inbox is empty, We'll let you know when we\nget news ",textAlign: TextAlign.center,)
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  )
                  // ListTile(title: Text('This is tile number 3')),
                ],
              ),
              ExpansionTile(
                expandedAlignment: Alignment.topLeft,
                title: Row(
                  children: const [
                    Text('My WorkSpace',style: TextStyle(fontWeight: FontWeight.bold),),
                    Icon(
                      Icons.info_outline,
                      size: 20,
                    )
                  ],
                ),
                controlAffinity:
                ListTileControlAffinity.leading,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Neumorphic(
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
                                        'assets/icons/letter-m.png',
                                      ),
                                    fit: BoxFit.fill
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: const [
                                  Text("Main workspace",
                                      style: TextStyle(
                                          fontWeight:
                                          FontWeight.w600)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "work management"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}