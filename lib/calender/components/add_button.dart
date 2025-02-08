import 'package:fancale_2/add_calender_memo/add_calender_memo_page.dart';
import 'package:fancale_2/calender/model/calender_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<Calender>();

    return IconButton(
        onPressed: () async {
          await showDialog<String>(
              context: context,
              builder: (context) =>
                  AddClenderMemo(selectedDay: model.selectedDay));
        },
        icon: const Icon(Icons.add));
  }
}
