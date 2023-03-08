import 'package:flutter/material.dart';

class SideNavTile extends StatelessWidget {
  const SideNavTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          children: [
            SizedBox(height: 10,),
            GestureDetector(
              child: Image.asset('assets/icons/dots-menu.png',height: 30,color: Colors.deepPurple),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              child: Icon(Icons.notifications_none),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              child: Icon(Icons.inbox_outlined),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              child: Icon(Icons.calendar_today_outlined),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              child: Icon(Icons.star_border_rounded),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              child: Icon(Icons.contact_page_outlined),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              child: Icon(Icons.search_rounded),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              child: Icon(Icons.help_outline_rounded),
            ),
            SizedBox(height: 10,),
          ],
        )
    );
  }
}
