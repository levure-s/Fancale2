import 'package:fancale_2/calender/components/calender_body.dart';
import 'package:fancale_2/calender/components/add_button.dart';
import 'package:fancale_2/calender/components/mypage_button.dart';
import 'package:fancale_2/calender/model/calender_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Calender()..fetchCalender(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('カレンダー'),
          actions: const [AddButton(), MypageButton()],
        ),
        body: const CalenderBody(),
      ),
    );
  }
}
