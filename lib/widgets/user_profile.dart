import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  List<MenuRowData> firstMenuRow = [
    MenuRowData(Icons.favorite, "Избранное"),
    MenuRowData(Icons.call, "Звонки"),
    MenuRowData(Icons.computer, "Устройство"),
    MenuRowData(Icons.folder, "Папка с чатами"),
  ];
  List<MenuRowData> secondMenuRow = [
    MenuRowData(Icons.notifications, "Уведомления и звуки"),
    MenuRowData(Icons.privacy_tip, "Конфеденциальность"),
    MenuRowData(Icons.data_usage, "Данные и память"),
    MenuRowData(Icons.brush, "Оформление"),
    MenuRowData(Icons.language, "Язык"),
  ];

  UserProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          title: Center(child: Text("Настройки"))
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 30),
            _MenuWidget(menuRow: firstMenuRow),
            SizedBox(height: 30),
            _MenuWidget(menuRow: secondMenuRow),
          ],
        ),
      ),
    );
  }
}
class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}


class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({Key? key, required this.menuRow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data,)).toList(),
      ),
    );
  }
}


class _MenuWidgetRow extends StatefulWidget {
  final MenuRowData data;
  const _MenuWidgetRow({Key? key, required this.data}) : super(key: key);

  @override
  _MenuWidgetRowState createState() => _MenuWidgetRowState();
}

class _MenuWidgetRowState extends State<_MenuWidgetRow> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(widget.data.icon),
          SizedBox(width: 15),
          Expanded(child: Text(widget.data.text)),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}




class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 20),
          _AvatarWidget(),
          SizedBox(height: 20),
          _UserNameWidget(),
          SizedBox(height: 10),
          _UserPhoneWidget(),
          SizedBox(height: 10),
          _UserNickNameWidget(),
        ],
      ),
    );
  }
}


class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("@andyPanda");
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("+7 982 293-23-51", style: TextStyle(color: Colors.grey, fontSize: 15));
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Name Name Name', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600));
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        child: Placeholder()
      );
  }
}
