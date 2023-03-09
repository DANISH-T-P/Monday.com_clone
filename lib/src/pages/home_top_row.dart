import 'package:flutter/material.dart';

class HomeTopView extends StatelessWidget {
  const HomeTopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: Colors.white,
          child: Row(
      children: [
          Expanded(
            child: Container(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Good morniong, DANISH!'),
                    SizedBox(height: 5,),
                    Text('Quickly access your recent boards, Inbox and\nworkspaces'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width * 0.15,
            child: Image.asset('assets/images/bg_2.png',fit: BoxFit.fill),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width * 0.15,
            child: Center(child: Text('Give\nfeedback')),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width * 0.22,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6), color: Color(0xff0066ff)),
                child: const Center(
                    child: Text(
                  'Quick Search',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
      ],
    ),
        ));
  }
}
