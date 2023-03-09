import 'package:flutter/material.dart';

class SideNavTile extends StatelessWidget {
  const SideNavTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: ListView(
            children: [
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 32,
                  decoration: BoxDecoration(
                    color:
                    Colors.deepOrange.shade100,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/logos/logo_2.png',
                        ),fit: BoxFit.fill
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                child: Icon(Icons.notifications_none,color: Colors.white,),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                child: Icon(Icons.inbox_outlined,color: Colors.white,),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                child: Icon(Icons.calendar_today_outlined,color: Colors.white,),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                child: Icon(Icons.star_border_rounded,color: Colors.white,),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                child: Icon(Icons.contact_page_outlined,color: Colors.white,),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                child: Icon(Icons.search_rounded,color: Colors.white,),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                child: Icon(Icons.help_outline_rounded,color: Colors.white,),
              ),
              SizedBox(height: 10,),
            ],
          ),
        )
    );
  }
}
