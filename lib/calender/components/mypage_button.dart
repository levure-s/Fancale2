import 'package:fancale_2/home/home_model.dart';
import 'package:fancale_2/login/login_page.dart';
import 'package:fancale_2/mypage/my_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MypageButton extends StatelessWidget {
  const MypageButton({super.key});

  @override
  Widget build(BuildContext context) {
    final home = context.watch<HomeModel>();

    return IconButton(
        onPressed: () async {
          if (FirebaseAuth.instance.currentUser != null) {
            await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyPage(),
                    fullscreenDialog: true));
            home.checkLoginInfo();
          } else {
            await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                    fullscreenDialog: true));
          }
        },
        icon: const Icon(Icons.person));
  }
}
