import 'package:flutter/material.dart';
import 'package:flutter_widgets_example/widgets/user.dart';

import 'menu.dart';


//Основное отображение экрана
class UserProfile extends StatelessWidget {
  List<MenuRowData> firstMenuRow = [
    MenuRowData(Icons.favorite, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
  ];
  List<MenuRowData> secondMenuRow = [
    MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    MenuRowData(Icons.language, 'Язык'),
  ];

  UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const UserInfo(),
            const SizedBox(height: 30),
            MenuWidget(menuRow: firstMenuRow),
            const SizedBox(height: 30),
            MenuWidget(menuRow: secondMenuRow),
          ],
        ),
      ),
    );
  }
}





