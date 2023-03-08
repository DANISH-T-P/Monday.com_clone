import 'package:flutter/material.dart';
import 'package:wrike_clone/src/pages/side_nav_tile.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 70,
              color: Colors.indigo,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Image.asset('assets/icons/dots-menu.png',
                          height: 30, color: Colors.deepPurple),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SideNavTile(),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Image.asset('assets/icons/dots-menu.png',
                          height: 30, color: Colors.deepPurple),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                        child: CircleAvatar(
                            child: Text(
                      'D',
                    ))),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(children: [
                      Expanded(
                          child: Container(
                        height: 80,
                        width: 50,
                        color: Colors.cyan,
                      ))
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                children: [
                                  ExpansionTile(title: Text('Recently visited'),
                                      trailing: SizedBox.shrink(),
                                      leading: Icon(Icons.keyboard_arrow_right_outlined),
                                      children: [
                                        Card(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                color: Colors.blue
                                              ),
                                              child: Image.asset('assets/images/quick_search_recent_board.png'),
                                            ),
                                          ),
                                          elevation: 5,
                                        ),
                                  ]),
                                ],
                              ),
                            )
                          ]),
                          Column(children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2.8,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
