import 'package:flutter/material.dart';

//Хранит иконку и название
class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

//Преобразовывает единичные данные о иконках и названии в виджет и отображающий его
class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          const SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          const Icon(Icons.chevron_right_sharp),
        ],
      ),
    );
  }
}

//Преобразовывает список данных о иконках и названии в список виджетов и отображающий его
class MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;

  const MenuWidget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

