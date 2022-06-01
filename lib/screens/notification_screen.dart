import 'package:flutter/material.dart';
import 'package:tools/widgets/notification/notification_list_tile_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return notificationListTileWidget(
                    imageUrl:
                        'https://images.unsplash.com/photo-1653932946648-6585ff164682?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
                    title: 'التنبيه الأول',
                    subTitle: 'محتوى التنبيه',
                    textHours: 'منذ 4 ساعات');
              },
            ),
          ),
        ],
      ),
    );
  }
}
