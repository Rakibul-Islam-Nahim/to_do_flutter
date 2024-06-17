import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nahim_first_kamla/constants/colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: hackBlack,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://media2.giphy.com/media/65HOeb1Vi8LLh16UFS/200w.gif?cid=6c09b952wswb7ffkyo3k36p63utbrcn5y6telw7uapa8537k&ep=v1_gifs_search&rid=200w.gif&ct=g'),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text('Rakib Nahim'),
            accountEmail: Text('rakib.ul.islam.nahim.cuet@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('nahim.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
