import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:wrike_clone/src/pages/side_nav_tile.dart';
import 'package:hovering/hovering.dart';

class HomeNavRail extends StatelessWidget {
  const HomeNavRail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      color: Color(0xff333366),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade100,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/logos/logo_1.png',
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
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
                  height: 30, color: Color(0xff6666ff)),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 60,
              height: 60,
              child: Center(
                child: HoverContainer(
                  width: 50,
                  height: 50,
                  hoverHeight: 45,
                  hoverWidth: 45,
                  child: CircleAvatar(
                      child: Image.asset('assets/icons/user.png'),
                      backgroundColor: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
